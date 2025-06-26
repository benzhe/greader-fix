.class public Llu6;
.super Lpc;
.source "SourceFile"

# interfaces
.implements Lsd$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu6$e;,
        Llu6$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc;",
        "Lsd$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field public o:Landroid/app/ProgressDialog;

.field public p:Llu6$f;

.field public q:Landroid/widget/Spinner;

.field public r:Z

.field public s:Ljava/lang/String;

.field public final t:Landroid/content/BroadcastReceiver;

.field public final u:Lcom/noinnion/android/widget/TouchListView$c;

.field public final v:Lcom/noinnion/android/widget/TouchListView$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpc;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Llu6;->r:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Llu6;->s:Ljava/lang/String;

    .line 4
    new-instance v0, Llu6$a;

    invoke-direct {v0, p0}, Llu6$a;-><init>(Llu6;)V

    iput-object v0, p0, Llu6;->t:Landroid/content/BroadcastReceiver;

    .line 5
    new-instance v0, Llu6$c;

    invoke-direct {v0, p0}, Llu6$c;-><init>(Llu6;)V

    iput-object v0, p0, Llu6;->u:Lcom/noinnion/android/widget/TouchListView$c;

    .line 6
    new-instance v0, Llu6$d;

    invoke-direct {v0, p0}, Llu6$d;-><init>(Llu6;)V

    iput-object v0, p0, Llu6;->v:Lcom/noinnion/android/widget/TouchListView$d;

    return-void
.end method


# virtual methods
.method public e(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Llu6;->p:Llu6$f;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lip6;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p2

    iget-wide p3, p1, Lip6;->e:J

    invoke-static {p2, p3, p4}, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->d(Lwb;J)V

    return-void
.end method

.method public f(Lwd;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Landroid/database/Cursor;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5
    :cond_1
    new-instance v0, Lip6;

    invoke-direct {v0, p2}, Lip6;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    iget-object p2, p0, Llu6;->p:Llu6$f;

    if-nez p2, :cond_2

    .line 9
    new-instance p2, Llu6$f;

    invoke-direct {p2, p0, p1}, Llu6$f;-><init>(Llu6;Ljava/util/List;)V

    iput-object p2, p0, Llu6;->p:Llu6$f;

    .line 10
    invoke-virtual {p0, p2}, Lpc;->h(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lip6;

    .line 13
    iget-object v0, p0, Llu6;->p:Llu6$f;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public g(ILandroid/os/Bundle;)Lwd;
    .locals 7
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

    move-result-object v1

    .line 3
    iget-object p1, p0, Llu6;->s:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-static {v1}, Lon6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 6
    new-instance p2, Lvd;

    sget-object v2, Lip6;->A:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lvd;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 7
    :cond_1
    iget-object p1, p0, Llu6;->s:Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0}, Lep6;->x(Landroid/content/Context;Ljava/lang/String;ZZ)Lvd;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Lsd;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lsd;->c(ILandroid/os/Bundle;Lsd$a;)Lwd;

    return-void
.end method

.method public k(Lwd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Llu6;->p:Llu6$f;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lpc;->d()V

    .line 3
    iget-object p1, p0, Lpc;->i:Landroid/widget/ListView;

    .line 4
    check-cast p1, Lcom/noinnion/android/widget/TouchListView;

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 6
    iget-object v0, p0, Llu6;->u:Lcom/noinnion/android/widget/TouchListView$c;

    invoke-virtual {p1, v0}, Lcom/noinnion/android/widget/TouchListView;->setDropListener(Lcom/noinnion/android/widget/TouchListView$c;)V

    .line 7
    iget-object v0, p0, Llu6;->v:Lcom/noinnion/android/widget/TouchListView$d;

    invoke-virtual {p1, v0}, Lcom/noinnion/android/widget/TouchListView;->setRemoveListener(Lcom/noinnion/android/widget/TouchListView$d;)V

    .line 8
    invoke-virtual {p0}, Llu6;->j()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090097

    if-eq v0, v1, :cond_7

    const v1, 0x7f0900d5

    if-eq v0, v1, :cond_4

    const p1, 0x7f09027e

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Llu6;->s:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    iget-object v2, p0, Llu6;->q:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Lhw6;->d(I)V

    .line 5
    iget-object p1, p0, Llu6;->q:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Llu6$e;

    invoke-direct {p1, p0, v0}, Llu6$e;-><init>(Llu6;Llu6$a;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->B()V

    goto/16 :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    invoke-virtual {p1, v1}, Lhw6;->d(I)V

    .line 9
    new-instance p1, Llu6$e;

    invoke-direct {p1, p0, v0}, Llu6$e;-><init>(Llu6;Llu6$a;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    if-eqz v0, :cond_a

    .line 13
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->C(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->D(J)V

    goto :goto_0

    .line 17
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 18
    :cond_8
    iget-object p1, p0, Llu6;->s:Ljava/lang/String;

    if-nez p1, :cond_9

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p1

    const/4 v0, -0x1

    .line 20
    iput v0, p1, Lhw6;->g:I

    .line 21
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->B()V

    :cond_a
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.noinnion.android.greader.reader.action.REFRESH"

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

    iget-object v1, p0, Llu6;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lyd;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c0072

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09027e

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090097

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902b9

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Llu6;->q:Landroid/widget/Spinner;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "tagUid"

    .line 6
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Llu6;->s:Ljava/lang/String;

    const p3, 0x7f0902ba

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v1, 0x7f030017

    const v2, 0x7f0c00d7

    invoke-static {p2, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object p2

    const v1, 0x1090009

    .line 8
    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 9
    iget-object v1, p0, Llu6;->q:Landroid/widget/Spinner;

    invoke-virtual {v1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 10
    iput-boolean v0, p0, Llu6;->r:Z

    .line 11
    iget-object p2, p0, Llu6;->q:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v1

    invoke-virtual {v1}, Lhw6;->b()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 12
    iget-object p2, p0, Llu6;->q:Landroid/widget/Spinner;

    new-instance v1, Llu6$b;

    invoke-direct {v1, p0}, Llu6$b;-><init>(Llu6;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 13
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Llu6;->o:Landroid/app/ProgressDialog;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v0

    iget-object v1, p0, Llu6;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lyd;->d(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
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
    iget-object p1, p0, Llu6;->p:Llu6$f;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lip6;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p2

    iget-wide p3, p1, Lip6;->e:J

    invoke-static {p2, p3, p4}, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->d(Lwb;J)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Llu6;->r:Z

    .line 3
    iget-object v0, p0, Llu6;->q:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v1

    invoke-virtual {v1}, Lhw6;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
