.class public Ljv6;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljv6$d;,
        Ljv6$e;
    }
.end annotation


# instance fields
.field public e:Ljv6$e;

.field public f:Ljv6$d;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:J

.field public i:Landroid/content/BroadcastReceiver;

.field public j:Lcom/noinnion/android/widget/TouchListView$c;

.field public k:Lcom/noinnion/android/widget/TouchListView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;JLjv6$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljv6$e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ljv6;->h:J

    .line 3
    new-instance p1, Ljv6$a;

    invoke-direct {p1, p0}, Ljv6$a;-><init>(Ljv6;)V

    iput-object p1, p0, Ljv6;->i:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance p1, Ljv6$b;

    invoke-direct {p1, p0}, Ljv6$b;-><init>(Ljv6;)V

    iput-object p1, p0, Ljv6;->j:Lcom/noinnion/android/widget/TouchListView$c;

    .line 5
    new-instance p1, Ljv6$c;

    invoke-direct {p1, p0}, Ljv6$c;-><init>(Ljv6;)V

    iput-object p1, p0, Ljv6;->k:Lcom/noinnion/android/widget/TouchListView$d;

    .line 6
    iput-object p2, p0, Ljv6;->g:Ljava/util/List;

    .line 7
    iput-wide p3, p0, Ljv6;->h:J

    .line 8
    iput-object p5, p0, Ljv6;->e:Ljv6$e;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09022a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 3
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.noinnion.android.greader.reader.action.NEW_ITEM"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Ljv6;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const p1, 0x7f0c010c

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const p1, 0x7f090322

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f110338

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f08001e

    .line 10
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 11
    new-instance v0, Lgv6;

    invoke-direct {v0, p0}, Lgv6;-><init>(Ljv6;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p1, 0x102000a

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/widget/TouchListView;

    .line 13
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 14
    iget-object v0, p0, Ljv6;->j:Lcom/noinnion/android/widget/TouchListView$c;

    invoke-virtual {p1, v0}, Lcom/noinnion/android/widget/TouchListView;->setDropListener(Lcom/noinnion/android/widget/TouchListView$c;)V

    .line 15
    iget-object v0, p0, Ljv6;->k:Lcom/noinnion/android/widget/TouchListView$d;

    invoke-virtual {p1, v0}, Lcom/noinnion/android/widget/TouchListView;->setRemoveListener(Lcom/noinnion/android/widget/TouchListView$d;)V

    .line 16
    new-instance v0, Ljv6$d;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljv6$d;-><init>(Ljv6;Landroid/content/Context;Ljv6$a;)V

    iput-object v0, p0, Ljv6;->f:Ljv6$d;

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const p1, 0x7f09022a

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of p2, p1, Ljava/lang/Long;

    if-eqz p2, :cond_1

    .line 3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 4
    iget-wide p4, p0, Ljv6;->h:J

    cmp-long v0, p4, p1

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Ljv6;->e:Ljv6$e;

    invoke-interface {p1}, Ljv6$e;->J()V

    return-void

    .line 6
    :cond_0
    iget-object p4, p0, Ljv6;->e:Ljv6$e;

    invoke-interface {p4, p3}, Ljv6$e;->a(I)V

    .line 7
    iput-wide p1, p0, Ljv6;->h:J

    .line 8
    iget-object p1, p0, Ljv6;->f:Ljv6$d;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Ljv6;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method
