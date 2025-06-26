.class public Llu6$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llu6;


# direct methods
.method public constructor <init>(Llu6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llu6$a;->a:Llu6;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Llu6$a;->a:Llu6;

    invoke-virtual {p1}, Llu6;->j()V

    return-void
.end method
