.class public final synthetic Lsp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/HomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp6;->e:Lcom/noinnion/android/greader/ui/home/HomeActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lsp6;->e:Lcom/noinnion/android/greader/ui/home/HomeActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2
    :pswitch_1
    new-instance p2, Lnn6;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v3, Lon6;->a:Lew6;

    .line 4
    invoke-virtual {v3}, Lew6;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, p1, v3, v0, v1}, Lnn6;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    new-array p1, v2, [Ljava/lang/Void;

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-static {p1}, Liw6;->z(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long p2, v3, v0

    if-lez p2, :cond_0

    .line 7
    new-instance p2, Lnn6;

    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v3, v4}, Lnn6;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    new-array p1, v2, [Ljava/lang/Void;

    .line 9
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 10
    :pswitch_3
    invoke-virtual {p1, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 11
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {p2}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result p2

    invoke-static {p1, v3, p2}, Lyo6;->e(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-virtual {p1, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 13
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/home/HomeActivity;->P:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {p2}, Lnet/simonvt/menudrawer/MenuDrawer;->f()Z

    move-result p2

    invoke-static {p1, v2, p2}, Lyo6;->e(Landroid/content/Context;ZZ)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0902e5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
