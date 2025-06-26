.class public final synthetic Lkj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lei2;


# instance fields
.field public final a:Lgn0;


# direct methods
.method public constructor <init>(Lgn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkj2;->a:Lgn0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lkj2;->a:Lgn0;

    check-cast p1, Lgo0;

    .line 2
    new-instance v1, Lbp0;

    invoke-interface {v0}, Lgn0;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lgn0;->getAmount()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lbp0;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lgo0;->S(Lbo0;)V

    return-void
.end method
