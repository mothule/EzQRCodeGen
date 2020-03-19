#!/usr/bin/env ruby

require 'rubygems'
require 'bundler/setup'

require 'rqrcode'

if ARGV.first.nil?
  raise ArgumentError.new('コンテンツを文字列で指定しなさい')
  exit(1) 
end

content = ARGV.first

# QRコードの生成
qr  = RQRCode::QRCode.new(content)
png = qr.as_png
#リサイズして保存
png.resize(200, 200).save("out.png")

exit(0)
