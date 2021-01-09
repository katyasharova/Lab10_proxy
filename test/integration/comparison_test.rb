require 'test_helper'

class ComparisonTest < ActionDispatch::IntegrationTest
  test 'check server processing request' do
    get output_url, :params => { :txt => '100', :process => 'Клиент' }
    content = '<?xml-stylesheet type="text/xsl" href="/xslt_for_response.xslt"?>'
    assert response.body.include?(content)
  end

  test 'check response with server processing' do
    get output_url, :params => { :txt => '100', :process => 'Сервер' }
    content = ['<html>', '<body>', '<table', '<th', '<tr']
    res = response.body
    assert content.all? { |str| res.include?(str) }
  end

  test 'check response without any handlings' do
    get output_url, :params => { :txt => '100', :process => 'Не обрабатывать' }
    content = ['<?xml version="1.0"?>', '<result>']
    not_incl = '<?xml-stylesheet type="text/xsl" href="/xslt_for_response.xslt"?>'
    res = response.body
    assert content.all? { |str| res.include?(str) } && res.exclude?(not_incl)
  end
end

