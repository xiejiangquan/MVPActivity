package ${packageName};

public interface ${iContractName} {

    interface IView extends com.ss.android.mvp.IView<IView.Delegate> {

        interface Delegate extends com.ss.android.mvp.IView.IViewDelegate {

        }
    }

    interface IModel extends com.ss.android.mvp.IModel {
        void setModelDelegate(${iContractName}.IModel.Delegate modelDelegate);

        interface Delegate {

        }
    }
}
