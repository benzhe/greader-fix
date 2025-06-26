.class public abstract Lvg7;
.super Lwb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lwb7<",
        "TU;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lxb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxb7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxb7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lwb7;-><init>()V

    .line 2
    iput-object p1, p0, Lvg7;->e:Lxb7;

    return-void
.end method
