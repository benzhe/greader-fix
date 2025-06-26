.class public Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;
.super Lqw6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/SubEditDialog$b;
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public displaySpinner:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e6
    .end annotation
.end field

.field public e:J

.field public excludeCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902e9
    .end annotation
.end field

.field public f:Lip6;

.field public feedUrlText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010f
    .end annotation
.end field

.field public g:Landroid/app/ProgressDialog;

.field public hideCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013d
    .end annotation
.end field

.field public imageFitCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090158
    .end annotation
.end field

.field public javascriptCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016f
    .end annotation
.end field

.field public loadLinkSpinner:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018d
    .end annotation
.end field

.field public nameText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090203
    .end annotation
.end field

.field public notificationCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090217
    .end annotation
.end field

.field public offlineSpinner:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090228
    .end annotation
.end field

.field public readingModeSpinner:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090262
    .end annotation
.end field

.field public userAgentSpinner:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090347
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lqw6;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->e:J

    return-void
.end method

.method public static d(Lwb;J)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;

    invoke-direct {v0}, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subId"

    .line 3
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    check-cast p0, Lxb;

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Lqb;

    invoke-direct {p1, p0}, Lqb;-><init>(Lxb;)V

    const-string p0, "fragment_sub_edit"

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, p2, v0, p0, v1}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p1}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lrb;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f11010b

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "subId"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->e:J

    .line 4
    :cond_0
    iget-wide v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->e:J

    const/4 v0, 0x0

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 5
    invoke-static {p1, v3, v4, v0}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f110310

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lrb;->dismiss()V

    :cond_2
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 10
    new-instance v1, Lt75;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lt75;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11034e

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object v1

    const/high16 v2, 0x1040000

    sget-object v4, Lyt6;->e:Lyt6;

    .line 12
    invoke-virtual {v1, v2, v4}, Lt75;->h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c00d8

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lt75;->n(Landroid/view/View;)La0$a;

    .line 15
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-object v3, v3, Lip6;->h:Ljava/lang/String;

    .line 16
    iget-object v4, v1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v1}, Lt75;->a()La0;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 19
    new-instance v3, Lwt6;

    invoke-direct {v3, p0, v1}, Lwt6;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;La0;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 20
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 22
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->feedUrlText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    .line 23
    iget-object v4, v3, Lip6;->i:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, v3, Lip6;->i:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v3, v3, Lip6;->f:Ljava/lang/String;

    const-string v4, "feed/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->nameText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-object v3, v3, Lip6;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->excludeCheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-boolean v3, v3, Lip6;->p:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 27
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->hideCheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-boolean v3, v3, Lip6;->q:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 28
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->notificationCheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-boolean v3, v3, Lip6;->r:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 29
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->imageFitCheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-boolean v3, v3, Lip6;->s:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 30
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->javascriptCheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget-boolean v3, v3, Lip6;->t:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030038

    const v4, 0x1090008

    invoke-static {v2, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    const v3, 0x1090009

    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 33
    iget-object v5, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->offlineSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 34
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget v2, v2, Lip6;->u:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    add-int/2addr v2, p1

    .line 35
    :goto_1
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->offlineSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v6, 0x7f030036

    invoke-static {v2, v6, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 38
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->displaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 39
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget v2, v2, Lip6;->v:I

    if-ne v2, v5, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    add-int/2addr v2, p1

    .line 40
    :goto_2
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->displaySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v6, 0x7f030037

    invoke-static {v2, v6, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 43
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->loadLinkSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 44
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget v2, v2, Lip6;->w:I

    if-ne v2, v5, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    add-int/2addr v2, p1

    .line 45
    :goto_3
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->loadLinkSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v6, 0x7f030039

    invoke-static {v2, v6, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 48
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->readingModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 49
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget v2, v2, Lip6;->x:I

    if-ne v2, v5, :cond_7

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    add-int/2addr v2, p1

    .line 50
    :goto_4
    iget-object v6, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->readingModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v6, 0x7f03003a

    invoke-static {v2, v6, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 53
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->userAgentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 54
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->f:Lip6;

    iget v2, v2, Lip6;->y:I

    if-ne v2, v5, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v2, 0x1

    .line 55
    :goto_5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->userAgentSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-object v1
.end method
