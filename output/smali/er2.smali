.class public final synthetic Ler2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lcr2;


# direct methods
.method public constructor <init>(Lcr2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ler2;->e:Lcr2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ler2;->e:Lcr2;

    .line 1
    iget-object v1, v0, Lcr2;->f:Lir2;

    iget-object v0, v0, Lcr2;->a:Landroid/content/Context;

    invoke-interface {v1, v0}, Lir2;->a(Landroid/content/Context;)Lgl1;

    move-result-object v0

    return-object v0
.end method
