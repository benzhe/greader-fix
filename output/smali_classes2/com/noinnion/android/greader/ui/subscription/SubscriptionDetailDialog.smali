.class public Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;
.super Lo65;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$c;,
        Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$a;,
        Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;,
        Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;
    }
.end annotation


# instance fields
.field public q:Lcom/noinnion/android/reader/common/subscription/Feed;

.field public r:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$c;

.field public s:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;

.field public t:Lan6;

.field public vDescription:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090349
    .end annotation
.end field

.field public vEmpty:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034a
    .end annotation
.end field

.field public vImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09034f
    .end annotation
.end field

.field public vImageContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090350
    .end annotation
.end field

.field public vListView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090352
    .end annotation
.end field

.field public vProgress:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090353
    .end annotation
.end field

.field public vSubscribe:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090356
    .end annotation
.end field

.field public vTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090357
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/noinnion/android/reader/common/subscription/Feed;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lo65;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, Lan6;

    invoke-direct {p1}, Lan6;-><init>()V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->t:Lan6;

    .line 3
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->q:Lcom/noinnion/android/reader/common/subscription/Feed;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lo65;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->s:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;

    const p1, 0x7f0c00e5

    .line 3
    invoke-virtual {p0, p1}, Lo65;->setContentView(I)V

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->q:Lcom/noinnion/android/reader/common/subscription/Feed;

    iget-object v0, v0, Lcom/noinnion/android/reader/common/subscription/Feed;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vDescription:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->q:Lcom/noinnion/android/reader/common/subscription/Feed;

    iget-object v0, v0, Lcom/noinnion/android/reader/common/subscription/Feed;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vEmpty:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->q:Lcom/noinnion/android/reader/common/subscription/Feed;

    iget-object p1, p1, Lcom/noinnion/android/reader/common/subscription/Feed;->image:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v0

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->q:Lcom/noinnion/android/reader/common/subscription/Feed;

    iget-object v1, p1, Lcom/noinnion/android/reader/common/subscription/Feed;->image:Ljava/lang/String;

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vImage:Landroid/widget/ImageView;

    new-instance v4, Lpu6;

    invoke-direct {v4, p0}, Lpu6;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;)V

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Lh07;

    invoke-direct {v2, p1}, Lh07;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lhz6;->h(Ljava/lang/String;Lg07;Lgz6;Ll07;Lk07;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->q:Lcom/noinnion/android/reader/common/subscription/Feed;

    iget-boolean p1, p1, Lcom/noinnion/android/reader/common/subscription/Feed;->selected:Z

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->vSubscribe:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->s:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;

    invoke-virtual {p1}, Lvm6;->a()V

    .line 15
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->s:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->q:Lcom/noinnion/android/reader/common/subscription/Feed;

    iget-object v0, v0, Lcom/noinnion/android/reader/common/subscription/Feed;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lvm6;->e(Ljava/lang/Object;)J

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lo65;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->s:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$b;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Landroid/content/Context;)V

    .line 3
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v2, "DEFAULT_FINISHED_EVENT"

    invoke-virtual {v0, v2, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->s:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;

    new-instance v1, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$a;-><init>(Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;Lpu6;)V

    .line 5
    iget-object v0, v0, Lvm6;->b:Lwm6;

    const-string v2, "DEFAULT_ERROR_EVENT"

    invoke-virtual {v0, v2, v1}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Li0;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog;->s:Lcom/noinnion/android/greader/ui/subscription/SubscriptionDetailDialog$d;

    invoke-virtual {v0}, Lvm6;->b()V

    return-void
.end method
