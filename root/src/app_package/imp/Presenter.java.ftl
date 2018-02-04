package ${packageName};

import com.ss.android.callback.CallbackManager;
import com.ss.android.mvp.BasePresenter;

public class ${pName} extends BasePresenter<${iContractName}.IModel, ${iContractName}.IView, ${iContractName}.IView.Delegate>{

    private static final String TAG = "${pName}";

    private Dependency mDependency;
    private ViewDelegate mViewDelegate;
    private ModelDelegate mModelDelegate;

    protected CallbackManager mCallbackManager = new CallbackManager();

    public ${pName}(${iContractName}.IModel model, ${iContractName}.IView view,
        Dependency dependency) {
        super(model, view);
        mDependency = dependency;
        model.setModelDelegate(createModelDelegate());
    }

    @Override
    public void create() {
        super.create();
    }

    public class ViewDelegate implements ${iContractName}.IView.Delegate {


    }

    private class ModelDelegate implements ${iContractName}.IModel.Delegate {

    }

    public interface Dependency {
        void finish();
    }

    @Override
    protected ${iContractName}.IView.Delegate createViewDelegate() {
        mViewDelegate = new ViewDelegate();
        return mViewDelegate;
    }

    protected ${iContractName}.IModel.Delegate createModelDelegate() {
        mModelDelegate = new ModelDelegate();
        return mModelDelegate;
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    @Override
    protected ${iContractName}.IView getView() {
        return super.getView();
    }

    @Override
    protected ${iContractName}.IModel getModel() {
        return super.getModel();
    }
}