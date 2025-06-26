.class public final Lcom/noinnion/android/greader/ui/tts/TtsActivity;
.super Lcom/noinnion/android/reader/ui/BaseDialogActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljx6$a;",
            ">;"
        }
    .end annotation
.end field

.field public B:[J

.field public C:J

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:I

.field public G:Lop6;

.field public final H:Landroid/content/ServiceConnection;

.field public final I:Landroid/content/BroadcastReceiver;

.field public J:Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;

.field public K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEmptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fd
    .end annotation
.end field

.field public mLanguageText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090177
    .end annotation
.end field

.field public mListView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090186
    .end annotation
.end field

.field public mPlayButton:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090240
    .end annotation
.end field

.field public mPremiumUpgrade:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09024d
    .end annotation
.end field

.field public mTitleText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090322
    .end annotation
.end field

.field public y:Landroid/widget/ListPopupWindow;

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$b;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/tts/TtsActivity$b;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->H:Landroid/content/ServiceConnection;

    .line 3
    new-instance v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;

    invoke-direct {v0, p0}, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->I:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final B()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mListView"

    invoke-static {v0}, Lim7;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final C(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f080124

    goto :goto_0

    :cond_0
    const p1, 0x7f080125

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    const-string p1, "mPlayButton"

    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const-string p2, "availableVoices"

    .line 1
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->z:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/noinnion/android/greader/service/TtsService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.noinnion.android.greader.reader.action.INIT_TTS"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->z:Ljava/util/ArrayList;

    const-string p3, "ttsAvailableVoices"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->B:[J

    const-string p3, "itemIds"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 7
    iget-wide p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->C:J

    const-string v0, "itemId"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->D:Ljava/lang/String;

    const-string p3, "ttsTitle"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->E:Ljava/lang/String;

    const-string p3, "ttsUrl"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object p2, Lu7;->a:Ljava/lang/Object;

    .line 11
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    const p1, 0x7f110335

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 16
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->A(Landroid/os/Bundle;Z)V

    .line 2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.noinnion.android.greader.reader.action.INIT_LANGUAGE"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.START_INIT"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.INIT_ITEM"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.STATUS_CHANGED"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.noinnion.android.greader.reader.action.STOP_SERVICE"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/noinnion/android/greader/service/TtsService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->H:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const p1, 0x7f0c010a

    .line 10
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 11
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "intent"

    invoke-static {p1, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "itemIds"

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->B:[J

    const-string v1, "itemId"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->C:J

    const-string v1, "ttsTitle"

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->D:Ljava/lang/String;

    const-string v1, "ttsUrl"

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->E:Ljava/lang/String;

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->s()Lc0;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc0;->x(Landroidx/appcompat/widget/Toolbar;)V

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->t()Lu;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 20
    invoke-virtual {p1, v0}, Lu;->o(Z)V

    .line 21
    invoke-virtual {p1, v2}, Lu;->q(Z)V

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_5

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mPremiumUpgrade:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcn6;->d0(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Ln56;->B2(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 24
    sget-object p1, Lcom/noinnion/android/greader/service/TtsService;->B:Lcom/noinnion/android/greader/service/TtsService;

    if-eqz p1, :cond_2

    .line 25
    iget-boolean p1, p1, Lcom/noinnion/android/greader/service/TtsService;->e:Z

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 26
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    const p1, 0x7f11010f

    .line 31
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void

    :cond_4
    const-string p1, "mPremiumUpgrade"

    .line 32
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p1, "mEmptyView"

    .line 33
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "mListView"

    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p1, "mToolbar"

    .line 34
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lop6;->p3()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lop6;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->H:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5
    invoke-static {p0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    .line 6
    invoke-super {p0}, Lcom/noinnion/android/reader/ui/BaseDialogActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_1

    const v0, 0x7f090332

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity$c;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity$c;

    .line 3
    sget v0, Lcom/noinnion/android/greader/ui/setting/TextToSpeechPreferenceFragment;->l:I

    .line 4
    new-instance v0, Lt75;

    invoke-direct {v0, p0}, Lt75;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00fd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lt75;->n(Landroid/view/View;)La0$a;

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Lt75;->d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->o()Lwb;

    move-result-object v1

    const v2, 0x7f1102b5

    .line 8
    invoke-virtual {v0, v2}, Lt75;->l(I)La0$a;

    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object v0

    .line 9
    new-instance v2, Lnt6;

    invoke-direct {v2, v1, p1}, Lnt6;-><init>(Lwb;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final premiumUpgrade(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09024d
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ln56;->Z1(Landroid/app/Activity;)V

    return-void
.end method

.method public final setMEmptyView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mEmptyView:Landroid/view/View;

    return-void
.end method

.method public final setMPremiumUpgrade(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mPremiumUpgrade:Landroid/view/View;

    return-void
.end method

.method public final showLanguageList(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090176
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->A:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->y:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->A:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/16 v1, 0x1c2

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 8
    new-instance v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;

    invoke-direct {v1, p0, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->y:Landroid/widget/ListPopupWindow;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->y:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    :cond_2
    return-void
.end method
