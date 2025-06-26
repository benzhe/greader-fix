.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;
.super Lqw6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;,
        Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$e;,
        Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;,
        Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$d;
    }
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public e:Landroid/app/ProgressDialog;

.field public f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lip6;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;

.field public i:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$d;

.field public mListView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x102000a
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;",
            "Ljava/util/List<",
            "Lip6;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lqw6;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    .line 3
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->g:Ljava/util/List;

    return-void
.end method

.method public static d(Lwb;Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;Ljava/util/List;Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb;",
            "Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;",
            "Ljava/util/List<",
            "Lip6;",
            ">;",
            "Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$d;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;

    invoke-direct {v0, p1, p2}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;Ljava/util/List;)V

    .line 2
    iput-object p3, v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->i:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$d;

    .line 3
    check-cast p0, Lxb;

    .line 4
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p1, Lqb;

    invoke-direct {p1, p0}, Lqb;-><init>(Lxb;)V

    const-string p0, "fragment_edit_tag"

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p1, p2, v0, p0, p3}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {p1}, Lqb;->d()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lrb;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lip6;

    .line 4
    new-instance v2, Lky6;

    iget-object v3, v1, Lip6;->h:Ljava/lang/String;

    iget-object v4, v1, Lip6;->f:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lky6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-object v1, v2, Lky6;->d:Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    sget-object v4, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->e:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v3, v4, :cond_0

    .line 7
    iget-boolean v1, v1, Lip6;->r:Z

    iput-boolean v1, v2, Lky6;->e:Z

    goto :goto_1

    .line 8
    :cond_0
    sget-object v4, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v3, v4, :cond_1

    .line 9
    iget-boolean v1, v1, Lip6;->s:Z

    iput-boolean v1, v2, Lky6;->e:Z

    goto :goto_1

    .line 10
    :cond_1
    sget-object v4, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;->g:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    if-ne v3, v4, :cond_2

    .line 11
    iget-boolean v1, v1, Lip6;->t:Z

    iput-boolean v1, v2, Lky6;->e:Z

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c002f

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->h:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$c;

    .line 14
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100ed

    invoke-static {p1, v0}, Ln56;->y2(Landroid/app/Activity;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lrb;->dismiss()V

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 4
    new-instance v0, Lt75;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lt75;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->f:Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$f;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    goto :goto_0

    :pswitch_0
    const v1, 0x7f110315

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v1, 0x7f110312

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v1, 0x7f11030f

    .line 8
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const v1, 0x7f11030c

    .line 9
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const v1, 0x7f110311

    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    const v1, 0x7f11030e

    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    const v1, 0x7f11030d

    .line 12
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    const v1, 0x7f110362

    .line 13
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    :goto_0
    iget-object v3, v0, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, v3, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const v1, 0x7f11034e

    .line 15
    invoke-virtual {v0, v1, v2}, Lt75;->d(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    const/high16 v1, 0x1040000

    new-instance v3, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$a;

    invoke-direct {v3, p0}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;)V

    .line 16
    invoke-virtual {v0, v1, v3}, La0$a;->b(ILandroid/content/DialogInterface$OnClickListener;)La0$a;

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c00e9

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lt75;->n(Landroid/view/View;)La0$a;

    .line 19
    invoke-virtual {v0}, Lt75;->a()La0;

    move-result-object v0

    .line 20
    new-instance v2, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$b;

    invoke-direct {v2, p0, v0}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;La0;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 21
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 22
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionSelectionDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
