.class public Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-virtual {p1, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-static {p1, v3}, Lyo6;->h(Landroid/content/Context;Z)V

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-virtual {p1, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-static {p1, v2}, Lyo6;->h(Landroid/content/Context;Z)V

    goto :goto_0

    .line 5
    :pswitch_3
    new-instance p2, Lnn6;

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3, p1, v0, v1}, Lnn6;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-static {p2}, Liw6;->z(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long p2, v3, v0

    if-lez p2, :cond_0

    .line 7
    new-instance p2, Lnn6;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1, v3, v4}, Lnn6;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-virtual {p1, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-static {p1, v3}, Lyo6;->f(Landroid/content/Context;Z)V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-virtual {p1, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 11
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeTabletActivity$b;->e:Lcom/noinnion/android/greader/ui/home/HomeTabletActivity;

    invoke-static {p1, v2}, Lyo6;->f(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0902e5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
