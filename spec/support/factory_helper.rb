module FactoryHelper
  def empty_file
    Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec',
                                           'support_files',
                                           'file.pdf'))
  end
end
