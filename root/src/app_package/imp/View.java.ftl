package ${packageName};

import android.app.Activity;

public class ${vName} implements ${iContractName}.IView {

    private static final String TAG = "${vName}";

    private Delegate mViewDelegate;
    private ViewDependency mDependency;
    private Activity mHostActivity;

    public ${vName}(${vName}.ViewDependency dependency, Activity activity) {
        mDependency = dependency;
        mHostActivity = activity;
    }

    @Override
    public void create() {
        if (mDependency != null) {
            mDependency.injectView(this);
        }
        //初始化...
    }


    @Override
    public void destroy() {

    }

    @Override
    public void setViewDelegate(Delegate viewDelegate) {
        this.mViewDelegate = viewDelegate;
    }

    public interface ViewDependency {
        void injectView(${vName} oncallView);
    }
}
