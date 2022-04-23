library view_model;

abstract class ViewModel {
  
  /// Non updatedable &sync data write in [init].
  /// or add Listener.
  void init() {
    
    ready();
    updateView();
  }

  
  void ready();


  void update(){

    updateView();
  }
  void updateView();

  void dispose();
}
