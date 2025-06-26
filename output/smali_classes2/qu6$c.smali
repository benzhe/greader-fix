.class public Lqu6$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lqu6;


# direct methods
.method public constructor <init>(Lqu6;Lqu6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqu6$c;->a:Lqu6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Long;

    .line 2
    iget-object v0, p0, Lqu6$c;->a:Lqu6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lqu6$c;->a:Lqu6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "_id"

    invoke-static {v0, v2, p1, v1}, Lip6;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lip6;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lep6;->Q(Lip6;JZ)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
