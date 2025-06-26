.class public final synthetic Ldm3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lam3;


# direct methods
.method public constructor <init>(Lam3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm3;->e:Lam3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldm3;->e:Lam3;

    const/4 v1, 0x3

    .line 1
    invoke-virtual {v0, v1}, Lam3;->d(I)V

    return-void
.end method
