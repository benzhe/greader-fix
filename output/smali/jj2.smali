.class public final synthetic Ljj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lei2;


# instance fields
.field public final a:Lgn0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj2;->a:Lgn0;

    iput-object p2, p0, Ljj2;->b:Ljava/lang/String;

    iput-object p3, p0, Ljj2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ljj2;->a:Lgn0;

    iget-object v1, p0, Ljj2;->b:Ljava/lang/String;

    iget-object v2, p0, Ljj2;->c:Ljava/lang/String;

    check-cast p1, Loo0;

    .line 2
    new-instance v3, Lbp0;

    .line 3
    invoke-interface {v0}, Lgn0;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lgn0;->getAmount()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lbp0;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-interface {p1, v3, v1, v2}, Loo0;->G1(Lbo0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
