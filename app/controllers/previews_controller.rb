class PreviewsController < ApplicationController
  require 'rqrcode'

  @qr = RQRCode::QRCode.new( 'https://twitter.com/kyouka0w0', :size => 4, :level => :h )
  png = @qr.as_png(
          resize_gte_to: false,
          resize_exactly_to: false,
          fill: 'white',
          color: 'black',
          size: 120,
          border_modules: 4,
          module_px_size: 6,
          file: nil # path to write
          )
_path = "./qr_code.png"
IO.write(_path, png.to_s,  external_encoding: "ASCII-8BIT")

end