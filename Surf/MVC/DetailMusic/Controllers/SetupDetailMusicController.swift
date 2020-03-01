//DetailMusic

import UIKit

class SetupDetailMusicController: NSObject, LifeCycloble, Controllers {
	
	//MARK: - Public variable
	public var VC: DetailMusicViewController!
	
	//MARK: - Public functions
	public func viewDidLoad(){
    self.setupCollectionView()
	}
}
//MARK: - Private functions
extension SetupDetailMusicController {
  
  //MARK: - Setup Collection View
  private func setupCollectionView(){
    self.VC.collectionView.collectionViewLayout = self.createCompositionLayout()
  }
  //MARK: - Create Composition Layout
  private func createCompositionLayout() -> UICollectionViewLayout {
    let layout = UICollectionViewCompositionalLayout  { (sectionIndex, environment) -> NSCollectionLayoutSection? in
      return self.createSizeCell()
    }
  return layout
  }
  //MARK: - Create Size Cell
  private func createSizeCell() -> NSCollectionLayoutSection {
    //create cell and cell size
    let cellSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(300))
    let cell     = NSCollectionLayoutItem(layoutSize: cellSize)
    cell.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 10)
    //create group and group size
    let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(1.0))
    let group     = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [cell])
    group.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
    //create section
    let section = NSCollectionLayoutSection(group: group)
    //section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
  return section
  }

}
//MARK: - Initial
extension SetupDetailMusicController {
	
	//MARK: - Inition
	convenience init(vc: UIViewController) {
		self.init()
		self.VC = vc as? DetailMusicViewController
	}
}


