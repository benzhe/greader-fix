.class public Lqu6;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lsd$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqu6$e;,
        Lqu6$f;,
        Lqu6$d;,
        Lqu6$c;,
        Lqu6$g;,
        Lqu6$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Lsd$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/widget/ExpandableListView$OnGroupClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final synthetic x:I


# instance fields
.field public e:Landroid/app/ProgressDialog;

.field public f:Landroid/widget/ExpandableListView;

.field public g:Lqu6$f;

.field public h:Landroid/view/View;

.field public i:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public j:Landroid/widget/TextView;

.field public k:I

.field public l:I

.field public m:J

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public final u:Landroid/content/BroadcastReceiver;

.field public v:Landroid/view/View;

.field public w:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lqu6;->k:I

    .line 3
    iput v0, p0, Lqu6;->l:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lqu6;->m:J

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lqu6;->n:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lqu6;->o:Z

    .line 7
    iput-boolean v0, p0, Lqu6;->p:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lqu6;->q:Z

    .line 9
    iput-boolean v0, p0, Lqu6;->r:Z

    .line 10
    iput v0, p0, Lqu6;->s:I

    .line 11
    iput v0, p0, Lqu6;->t:I

    .line 12
    new-instance v0, Lqu6$a;

    invoke-direct {v0, p0}, Lqu6$a;-><init>(Lqu6;)V

    iput-object v0, p0, Lqu6;->u:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqu6;->w:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lqu6;->w:Ljava/util/HashSet;

    .line 3
    :cond_0
    iget-object v0, p0, Lqu6;->w:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lqu6;->w:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/Object;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    instance-of v4, v3, Lqu6$e;

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, Lqu6$e;

    iget-object v2, v3, Lqu6$e;->a:Ljava/lang/Object;

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public f(Lwd;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Landroid/database/Cursor;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lqu6;->p:Z

    .line 5
    sget-boolean v1, Lon6;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 6
    iget-wide v3, p0, Lqu6;->m:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lqu6;->e(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lqu6;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 9
    iget-object v1, p0, Lqu6;->n:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lqu6;->e(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    iget v4, p0, Lqu6;->k:I

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    .line 11
    iget-object v3, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    iget-object v3, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v3

    if-le v3, v1, :cond_5

    .line 13
    iget-object v3, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Landroid/database/Cursor;

    const-string v4, "type"

    .line 15
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    const-string v8, ""

    if-le v4, v7, :cond_4

    .line 16
    new-instance v4, Lkp6$a;

    invoke-direct {v4, v3}, Lkp6$a;-><init>(Landroid/database/Cursor;)V

    .line 17
    iget v3, v4, Lkp6$a;->c:I

    const/16 v7, 0x64

    if-ge v3, v7, :cond_3

    .line 18
    new-instance v3, Llp6;

    invoke-direct {v3, v4}, Llp6;-><init>(Lkp6$a;)V

    .line 19
    iput-wide v5, p0, Lqu6;->m:J

    .line 20
    iget-object v4, v3, Llp6;->f:Ljava/lang/String;

    iput-object v4, p0, Lqu6;->n:Ljava/lang/String;

    .line 21
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {v4}, Lew6;->b()V

    .line 22
    sget-object v4, Lon6;->a:Lew6;

    iput-object v3, v4, Lew6;->b:Llp6;

    goto :goto_1

    .line 23
    :cond_3
    new-instance v3, Lip6;

    invoke-direct {v3, v4}, Lip6;-><init>(Lkp6$a;)V

    .line 24
    iget-wide v4, v4, Lkp6$a;->a:J

    iput-wide v4, p0, Lqu6;->m:J

    .line 25
    iput-object v8, p0, Lqu6;->n:Ljava/lang/String;

    .line 26
    sget-object v4, Lon6;->a:Lew6;

    invoke-virtual {v4}, Lew6;->b()V

    .line 27
    sget-object v4, Lon6;->a:Lew6;

    iput-object v3, v4, Lew6;->a:Lip6;

    goto :goto_1

    .line 28
    :cond_4
    new-instance v4, Lip6;

    invoke-direct {v4, v3}, Lip6;-><init>(Landroid/database/Cursor;)V

    .line 29
    iget-wide v5, v4, Lip6;->e:J

    iput-wide v5, p0, Lqu6;->m:J

    .line 30
    iput-object v8, p0, Lqu6;->n:Ljava/lang/String;

    .line 31
    sget-object v3, Lon6;->a:Lew6;

    invoke-virtual {v3}, Lew6;->b()V

    .line 32
    sget-object v3, Lon6;->a:Lew6;

    iput-object v4, v3, Lew6;->a:Lip6;

    .line 33
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lyd;->c(Landroid/content/Intent;)Z

    .line 34
    iget-object v3, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    goto :goto_2

    .line 35
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/noinnion/android/greader/ui/home/HomeActivity;->T(Landroid/app/Activity;)V

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/noinnion/android/greader/ui/home/HomeActivity;->T(Landroid/app/Activity;)V

    .line 37
    :goto_2
    sput-boolean v0, Lon6;->i:Z

    .line 38
    :cond_7
    iget-object v1, p0, Lqu6;->g:Lqu6$f;

    invoke-virtual {v1, p2}, Landroid/widget/ResourceCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 39
    iget-object p2, p0, Lqu6;->j:Landroid/widget/TextView;

    invoke-static {p1}, Liw6;->K(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-boolean p1, p0, Lqu6;->q:Z

    if-eqz p1, :cond_9

    .line 41
    :try_start_0
    iget-object p1, p0, Lqu6;->w:Ljava/util/HashSet;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 42
    iput-boolean v2, p0, Lqu6;->r:Z

    .line 43
    iget-object p1, p0, Lqu6;->w:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 44
    iget-object v1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 45
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_8
    iput-boolean v0, p0, Lqu6;->r:Z

    .line 47
    iget-object p1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    iget p2, p0, Lqu6;->s:I

    iget v1, p0, Lqu6;->t:I

    invoke-virtual {p1, p2, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 48
    iput-boolean v0, p0, Lqu6;->q:Z

    goto :goto_5

    .line 49
    :goto_4
    iput-boolean v0, p0, Lqu6;->r:Z

    .line 50
    throw p1

    :cond_9
    :goto_5
    return-void
.end method

.method public g(ILandroid/os/Bundle;)Lwd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p2

    .line 4
    iget-boolean v0, p2, Lhw6;->e:Z

    iget-boolean p2, p2, Lhw6;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, p2, v1, v2}, Lep6;->y(Landroid/content/Context;ZZZZ)Lvd;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/view/View;II)V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lqu6;->k:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lqu6;->v:Landroid/view/View;

    check-cast v0, Lfx6;

    invoke-interface {v0, v2}, Lfx6;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lqu6;->l:I

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 4
    iget-object v3, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    invoke-virtual {v3, v0, v2}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_1
    if-le v0, v3, :cond_2

    .line 5
    iget-object v1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/ExpandableListView;->setItemChecked(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :goto_0
    iput p2, p0, Lqu6;->k:I

    .line 8
    iput p3, p0, Lqu6;->l:I

    .line 9
    check-cast p1, Lfx6;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lfx6;->setChecked(Z)V

    .line 10
    iget-object p1, p0, Lqu6;->g:Lqu6$f;

    invoke-virtual {p1}, Landroid/widget/ResourceCursorTreeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lqu6;->o:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lqu6;->p:Z

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Lsd;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lsd;->c(ILandroid/os/Bundle;Lsd$a;)Lwd;

    :goto_1
    return-void
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lqu6;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lqu6;->h:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 4
    new-instance v2, Lmy6;

    invoke-direct {v2, v0, v1}, Lmy6;-><init>(Landroid/view/View;I)V

    int-to-float v1, v1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lqu6;->h:Landroid/view/View;

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    new-instance v2, Lly6;

    invoke-direct {v2, v0, v1}, Lly6;-><init>(Landroid/view/View;I)V

    int-to-float v1, v1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public k(Lwd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lqu6;->g:Lqu6$f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ResourceCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    sget-object v0, Lon6;->a:Lew6;

    .line 2
    iget-object v1, v0, Lew6;->a:Lip6;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, v1, Lip6;->e:J

    .line 4
    :goto_0
    iput-wide v1, p0, Lqu6;->m:J

    .line 5
    iget-object v0, v0, Lew6;->b:Llp6;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, v0, Llp6;->f:Ljava/lang/String;

    .line 7
    :goto_1
    iput-object v0, p0, Lqu6;->n:Ljava/lang/String;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lqu6;->i(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    const-string v2, "checkedGroupPosition"

    .line 2
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lqu6;->k:I

    const-string v2, "checkedChildPosition"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lqu6;->l:I

    const-string v1, "expandedGroups"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    array-length v2, v1

    if-lez v2, :cond_0

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 7
    invoke-virtual {p0, v4}, Lqu6;->d(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "scrollIndex"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lqu6;->s:I

    const-string v1, "scrollTop"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lqu6;->t:I

    const-string v1, "savedInstance"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lqu6;->q:Z

    .line 11
    :cond_1
    sget-object p1, Lon6;->a:Lew6;

    .line 12
    iget-object v1, p1, Lew6;->a:Lip6;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v4, v1, Lip6;->e:J

    .line 14
    :goto_1
    iput-wide v4, p0, Lqu6;->m:J

    .line 15
    iget-object p1, p1, Lew6;->b:Llp6;

    const-string v1, ""

    if-nez p1, :cond_3

    move-object p1, v1

    goto :goto_2

    .line 16
    :cond_3
    iget-object p1, p1, Llp6;->f:Ljava/lang/String;

    .line 17
    :goto_2
    iput-object p1, p0, Lqu6;->n:Ljava/lang/String;

    cmp-long v6, v4, v2

    if-nez v6, :cond_4

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x2

    .line 19
    iput p1, p0, Lqu6;->k:I

    .line 20
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_5

    goto/16 :goto_3

    .line 21
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const v6, 0x7f0c00f1

    .line 22
    invoke-virtual {p1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lqu6;->v:Landroid/view/View;

    const v6, 0x7f090179

    .line 23
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lqu6;->v:Landroid/view/View;

    const v6, 0x7f09031c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v6, 0x7f110154

    .line 25
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lqu6;->v:Landroid/view/View;

    const v6, 0x7f090143

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v6, 0x7f08018f

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object p1, p0, Lqu6;->v:Landroid/view/View;

    const v6, 0x7f090341

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lqu6;->j:Landroid/widget/TextView;

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Liw6;->K(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    iget-object v6, p0, Lqu6;->v:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 30
    iget-object p1, p0, Lqu6;->v:Landroid/view/View;

    check-cast p1, Lfx6;

    iget-wide v6, p0, Lqu6;->m:J

    cmp-long v8, v6, v2

    if-nez v8, :cond_7

    iget-object v2, p0, Lqu6;->n:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-interface {p1, v0}, Lfx6;->setChecked(Z)V

    .line 31
    :goto_3
    new-instance p1, Lqu6$f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0, v4, v4}, Lqu6$f;-><init>(Lqu6;Landroid/content/Context;Landroid/database/Cursor;Lqu6$a;)V

    iput-object p1, p0, Lqu6;->g:Lqu6$f;

    .line 32
    iget-object v0, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 33
    iget-object p1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, v5}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 34
    iget-object p1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 35
    iget-object p1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 36
    iget-object p1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 37
    iget-object p1, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of p5, p1, Lqu6$e;

    if-eqz p5, :cond_0

    .line 3
    check-cast p1, Lqu6$e;

    iget-object p1, p1, Lqu6$e;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    instance-of p5, p1, Ljava/lang/Long;

    if-eqz p5, :cond_1

    .line 5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    iput-wide p5, p0, Lqu6;->m:J

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lqu6;->n:Ljava/lang/String;

    .line 7
    new-instance p1, Lip6;

    iget-object p5, p0, Lqu6;->g:Lqu6$f;

    invoke-virtual {p5, p3, p4}, Landroid/widget/ResourceCursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object p5

    invoke-direct {p1, p5}, Lip6;-><init>(Landroid/database/Cursor;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-static {p5, p1}, Ln56;->g2(Landroid/app/Activity;Lip6;)V

    .line 9
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lqu6;->h(Landroid/view/View;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "com.noinnion.android.greader.reader.action.ITEM_LIST"

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110329

    const/4 v1, 0x0

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-static {p1, v3, v2, v1}, Llp6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Llp6;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, v1}, Ln56;->h2(Landroid/app/Activity;Llp6;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lqu6;->l()V

    .line 8
    invoke-virtual {p0}, Lqu6;->j()V

    goto/16 :goto_1

    .line 9
    :sswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 10
    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {v0}, Lew6;->a()V

    .line 11
    sget-object v0, Lon6;->a:Lew6;

    iput-boolean v2, v0, Lew6;->d:Z

    .line 12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cachedItems"

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    check-cast p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->J(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Lqu6;->l()V

    .line 16
    invoke-virtual {p0}, Lqu6;->j()V

    goto/16 :goto_1

    .line 17
    :sswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 18
    sget-object v0, Lon6;->a:Lew6;

    invoke-virtual {v0}, Lew6;->a()V

    .line 19
    sget-object v0, Lon6;->a:Lew6;

    iput-boolean v2, v0, Lew6;->e:Z

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "podcastItems"

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    check-cast p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->J(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lqu6;->l()V

    .line 24
    invoke-virtual {p0}, Lqu6;->j()V

    goto :goto_1

    .line 25
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Lqu6;->j()V

    goto :goto_1

    .line 27
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 30
    invoke-virtual {p0}, Lqu6;->j()V

    goto :goto_1

    .line 31
    :sswitch_6
    invoke-virtual {p0}, Lqu6;->j()V

    goto :goto_1

    .line 32
    :sswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 33
    iget-object v0, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lqu6;->w:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lqu6;->d(I)V

    .line 37
    iget-object v0, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090143 -> :sswitch_7
        0x7f090194 -> :sswitch_6
        0x7f090278 -> :sswitch_5
        0x7f09027a -> :sswitch_4
        0x7f09027b -> :sswitch_3
        0x7f09027c -> :sswitch_2
        0x7f09027d -> :sswitch_1
        0x7f0902d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.noinnion.android.greader.reader.action.REFRESH_SUB_LIST"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.noinnion.android.greader.reader.action.UNREAD_MODIFIED"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lqu6;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090109

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ExpandableListView;

    iput-object p2, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f0902e2

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lqu6;->i:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    invoke-static {p2}, Ljw6;->d(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 6
    iget-object p2, p0, Lqu6;->i:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p3, Leu6;

    invoke-direct {p3, p0}, Leu6;-><init>(Lqu6;)V

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$j;)V

    const p2, 0x7f090194

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902d9

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09027a

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090278

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09027b

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09027c

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09027d

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09010e

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p3

    iget-boolean p3, p3, Lhw6;->b:Z

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 16
    new-instance p3, Lcu6;

    invoke-direct {p3, p0}, Lcu6;-><init>(Lqu6;)V

    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p2, 0x7f090193

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lqu6;->h:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lqu6;->e:Landroid/app/ProgressDialog;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Lqu6;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2

    .line 1
    iget-boolean p1, p0, Lqu6;->r:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lqu6;->w:Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_0
    new-instance p1, Lkp6$a;

    iget-object p4, p0, Lqu6;->g:Lqu6$f;

    invoke-virtual {p4, p3}, Landroid/widget/ResourceCursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object p4

    invoke-direct {p1, p4}, Lkp6$a;-><init>(Landroid/database/Cursor;)V

    .line 4
    iget p4, p1, Lkp6$a;->c:I

    const/16 p5, 0x64

    if-ge p4, p5, :cond_1

    .line 5
    new-instance p4, Llp6;

    invoke-direct {p4, p1}, Llp6;-><init>(Lkp6$a;)V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lqu6;->m:J

    .line 7
    iget-object p1, p4, Llp6;->f:Ljava/lang/String;

    iput-object p1, p0, Lqu6;->n:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p4}, Ln56;->h2(Landroid/app/Activity;Llp6;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p4, Lip6;

    invoke-direct {p4, p1}, Lip6;-><init>(Lkp6$a;)V

    .line 10
    iget-wide v0, p4, Lip6;->e:J

    iput-wide v0, p0, Lqu6;->m:J

    const-string p1, ""

    .line 11
    iput-object p1, p0, Lqu6;->n:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p4}, Ln56;->g2(Landroid/app/Activity;Lip6;)V

    :goto_0
    const/4 p1, -0x1

    .line 13
    invoke-virtual {p0, p2, p3, p1}, Lqu6;->h(Landroid/view/View;II)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    const-wide/16 p3, 0x0

    .line 1
    iput-wide p3, p0, Lqu6;->m:J

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lqu6;->n:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 4
    sget-object p3, Lon6;->a:Lew6;

    invoke-virtual {p3}, Lew6;->a()V

    .line 5
    new-instance p3, Landroid/content/Intent;

    const-string p4, "com.noinnion.android.greader.reader.action.ITEM_LIST"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    check-cast p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1, p3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->J(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, -0x2

    const/4 p3, -0x1

    .line 7
    invoke-virtual {p0, p2, p1, p3}, Lqu6;->h(Landroid/view/View;II)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p3, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqu6$e;

    const/4 p4, 0x0

    if-nez p2, :cond_1

    move-object p2, p4

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p2, Lqu6$e;->a:Ljava/lang/Object;

    .line 5
    :goto_0
    new-instance p5, Lro$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p5, v0}, Lro$c;-><init>(Landroid/app/Activity;)V

    .line 6
    instance-of v0, p2, Ljava/lang/Long;

    const v1, 0x7f11019c

    const/4 v2, 0x4

    const v3, 0x7f11018c

    const/16 v4, 0x16

    const v5, 0x7f1101a3

    const/16 v6, 0x15

    if-eqz v0, :cond_3

    .line 7
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {p1, v7, v8, p3}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p4, p1, Lip6;->h:Ljava/lang/String;

    :cond_2
    const/16 p1, 0x2c

    const v0, 0x7f1101a0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 10
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p5, v6, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 11
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p5, v4, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    const p1, 0x7f110352

    .line 12
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p5, p3, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    const/16 p1, 0x17

    const v0, 0x7f1100e4

    .line 13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    const/16 p1, 0x18

    const v0, 0x7f110314

    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 15
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p5, v2, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    goto :goto_1

    .line 16
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, v6, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 18
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, v4, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 19
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p4, p1, Llp6;->i:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Llp6;->e()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x19

    const v3, 0x7f110343

    .line 22
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p5, v0, v3}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    :cond_5
    if-eqz p1, :cond_7

    .line 23
    iget p1, p1, Llp6;->g:I

    const/16 v0, 0x9

    if-eq p1, v0, :cond_7

    .line 24
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p5, v2, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    goto :goto_1

    :cond_6
    const p1, 0x7f110154

    .line 25
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 26
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p5, v6, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 27
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p5, v4, p1}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 28
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    .line 29
    iget v0, p1, Lhw6;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Lhw6;->a:Landroid/content/Context;

    invoke-static {v0}, Liw6;->J(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lhw6;->o:I

    .line 30
    :cond_8
    iget p1, p1, Lhw6;->o:I

    if-lez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_a

    const/16 p1, 0x1a

    const v0, 0x7f1101a8

    .line 31
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, p1, v0}, Lro$c;->c(ILjava/lang/CharSequence;)Lro$c;

    .line 32
    :cond_a
    iput-object p4, p5, Lro$c;->d:Ljava/lang/CharSequence;

    .line 33
    new-instance p1, Ldu6;

    invoke-direct {p1, p0, p2}, Ldu6;-><init>(Lqu6;Ljava/lang/Object;)V

    .line 34
    iput-object p1, p5, Lro$c;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 35
    invoke-virtual {p5}, Lro$c;->d()Lro;

    :goto_3
    return p3
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lqu6;->o:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lqu6;->o:Z

    .line 3
    iget-boolean v0, p0, Lqu6;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lqu6;->i(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget v0, p0, Lqu6;->k:I

    const-string v1, "checkedGroupPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Lqu6;->l:I

    const-string v1, "checkedChildPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lqu6;->w:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lqu6;->w:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 5
    iget-object v2, p0, Lqu6;->w:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 6
    aput v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const-string v2, "expandedGroups"

    .line 7
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 8
    :cond_1
    iget-object v0, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lqu6;->s:I

    .line 9
    iget-object v0, p0, Lqu6;->f:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    iput v1, p0, Lqu6;->t:I

    .line 11
    iget v0, p0, Lqu6;->s:I

    const-string v1, "scrollIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    iget v0, p0, Lqu6;->t:I

    const-string v1, "scrollTop"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "savedInstance"

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
