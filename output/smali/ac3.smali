.class public final Lac3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lxb3;


# direct methods
.method public constructor <init>(Lxb3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lac3;->e:Lxb3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lac3;->e:Lxb3;

    iget-object v0, v0, Lxb3;->a:Landroid/content/Context;

    invoke-static {v0}, Ly40;->a(Landroid/content/Context;)V

    return-void
.end method
