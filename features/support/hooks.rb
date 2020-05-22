Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')]
  .sort.each { |file| require file }

$pages = Pages::DesktopPages

$project_root = File.expand_path(File.join(File.dirname(__FILE__), '/../..'))

# Carrega apenas o que for necessário para execução do cenário ou automação.
features_root = File.join($project_root, '/features')
page_helpers_root = File.join(features_root, '/support/page_helpers')
page_objects_root = File.join(features_root, '/page_objects')

# Carrega apenas o que for necessário para execução do cenário ou automação.
$LOAD_PATH << features_root
$LOAD_PATH << page_helpers_root
$LOAD_PATH << page_objects_root