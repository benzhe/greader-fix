.class public Ltb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lvb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ltb;->a:Lvb;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltb;->a:Lvb;

    iget-object v0, v0, Lvb;->i:Lxb;

    invoke-virtual {v0}, Lxb;->j0()V

    return-void
.end method
