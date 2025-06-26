.class public Lxb$c;
.super Lub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb;->a0()Lub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lxb;


# direct methods
.method public constructor <init>(Lxb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb$c;->b:Lxb;

    invoke-direct {p0}, Lub;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object p1, p0, Lxb$c;->b:Lxb;

    iget-object p1, p1, Lxb;->t:Lvb;

    .line 2
    iget-object v0, p1, Lvb;->f:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0, p2, v1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
