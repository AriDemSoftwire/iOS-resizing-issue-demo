import UIKit

class LabelView: UIView {
    @IBOutlet weak var label: UILabel!

    var text: String = "" {
        didSet {
            label.text = text
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
    }

    private func loadViewFromNib() -> UILabel? {
        let nib = UINib(nibName: "LabelView", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UILabel
    }
}
