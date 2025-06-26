.class public Lrp6;
.super Lpc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrp6$d;,
        Lrp6$c;
    }
.end annotation


# instance fields
.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrp6$d;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lrp6$c;

.field public q:Landroid/app/NotificationManager;

.field public r:Z

.field public s:Lmp6;

.field public t:Landroid/content/ServiceConnection;

.field public u:Landroid/widget/ProgressBar;

.field public v:Landroid/widget/TextView;

.field public w:Z

.field public x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpc;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrp6;->o:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrp6;->r:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lrp6;->s:Lmp6;

    .line 5
    new-instance v0, Lrp6$a;

    invoke-direct {v0, p0}, Lrp6$a;-><init>(Lrp6;)V

    iput-object v0, p0, Lrp6;->t:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lrp6;->w:Z

    .line 7
    new-instance v0, Lrp6$b;

    invoke-direct {v0, p0}, Lrp6$b;-><init>(Lrp6;)V

    iput-object v0, p0, Lrp6;->x:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public e(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lrp6;->o:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrp6$d;

    .line 2
    iget p2, p1, Lrp6$d;->g:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    .line 3
    new-instance p2, Ljava/io/File;

    iget-object p1, p1, Lrp6$d;->c:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Ln56;->A1(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1100c5

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lpc;->d()V

    .line 3
    iget-object p1, p0, Lpc;->i:Landroid/widget/ListView;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 5
    new-instance p1, Lrp6$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0050

    iget-object v2, p0, Lrp6;->o:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1, v2}, Lrp6$c;-><init>(Lrp6;Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lrp6;->p:Lrp6$c;

    .line 6
    invoke-virtual {p0}, Lpc;->d()V

    .line 7
    iget-object p1, p0, Lpc;->i:Landroid/widget/ListView;

    .line 8
    iget-object v0, p0, Lrp6;->p:Lrp6$c;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSmoothScrollbarEnabled(Z)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/noinnion/android/greader/service/DownloadService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lrp6;->t:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lrp6;->q:Landroid/app/NotificationManager;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 3
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrp6$c$a;

    iget v2, v2, Lrp6$c$a;->f:I

    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/4 v4, 0x2

    packed-switch v3, :pswitch_data_0

    .line 5
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 6
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lrp6;->s:Lmp6;

    invoke-interface {p1}, Lmp6;->D0()V

    .line 7
    iget-object p1, p0, Lrp6;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lrp6;->p:Lrp6$c;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object p1, p0, Lrp6;->q:Landroid/app/NotificationManager;

    const v0, 0x7f09021c

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1

    .line 11
    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lrp6;->o:Ljava/util/List;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrp6$d;

    .line 12
    iget v0, p1, Lrp6$d;->g:I

    if-ne v0, v4, :cond_1

    .line 13
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lrp6$d;->c:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 16
    :cond_1
    iget-object p1, p0, Lrp6;->s:Lmp6;

    invoke-interface {p1, v2}, Lmp6;->remove(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1
    return v1

    .line 18
    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lrp6;->s:Lmp6;

    invoke-interface {p1, v2}, Lmp6;->remove(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    return v1

    .line 20
    :pswitch_3
    :try_start_3
    iget-object p1, p0, Lrp6;->s:Lmp6;

    invoke-interface {p1, v2}, Lmp6;->A4(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 21
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return v1

    .line 22
    :pswitch_4
    :try_start_4
    iget-object p1, p0, Lrp6;->s:Lmp6;

    invoke-interface {p1, v2}, Lmp6;->X3(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 23
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return v1

    .line 24
    :pswitch_5
    :try_start_5
    iget-object p1, p0, Lrp6;->o:Ljava/util/List;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrp6$d;

    .line 25
    iget v0, p1, Lrp6$d;->g:I

    if-ne v0, v4, :cond_3

    .line 26
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lrp6$d;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object p1, p1, Lrp6$d;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1100c5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_3
    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 3
    iget-object p2, p0, Lrp6;->o:Ljava/util/List;

    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lrp6$d;

    .line 4
    iget p2, p2, Lrp6$d;->g:I

    const p3, 0x7f1100c7

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_0

    const p2, 0x7f11034b

    .line 5
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v3, v3, v2, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 6
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v3, v1, v2, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 p2, 0x5

    const p3, 0x7f110343

    .line 7
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p1, v3, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-nez p2, :cond_1

    const/high16 p2, 0x1040000

    .line 8
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v3, v4, v2, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    if-ne p2, v4, :cond_3

    :cond_2
    const p2, 0x7f1100c8

    .line 9
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v3, v0, v2, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 10
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, v3, v1, v2, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    const/4 p2, 0x6

    const p3, 0x7f1100bf

    .line 11
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p1, v2, p2, v2, p3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c004f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09018e

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lrp6;->u:Landroid/widget/ProgressBar;

    const p2, 0x7f0900fe

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lrp6;->v:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lrp6;->t:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lrp6;->r:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrp6;->r:Z

    .line 3
    iget-object v1, p0, Lrp6;->x:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
