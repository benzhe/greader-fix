.class public final Lyn6$d;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyn6;-><init>(Leq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lel7<",
        "Lmb7<",
        "Ldq;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lyn6;


# direct methods
.method public constructor <init>(Lyn6;)V
    .locals 0

    iput-object p1, p0, Lyn6$d;->e:Lyn6;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lyn6$d;->e:Lyn6;

    .line 2
    iget-object v0, v0, Lyn6;->b:Leq;

    .line 3
    invoke-interface {v0}, Leq;->b()Lmb7;

    move-result-object v0

    return-object v0
.end method
