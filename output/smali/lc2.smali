.class public final synthetic Llc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final e:Lhc2;


# direct methods
.method public constructor <init>(Lhc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc2;->e:Lhc2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llc2;->e:Lhc2;

    .line 1
    new-instance v1, Lic2;

    iget-object v0, v0, Lhc2;->b:Landroid/os/Bundle;

    invoke-direct {v1, v0}, Lic2;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method
