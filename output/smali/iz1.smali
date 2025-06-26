.class public final Liz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DelegateT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljz1<",
        "TAdapterT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljz1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljz1<",
            "TDelegateT;>;"
        }
    .end annotation
.end field

.field public final b:Lvs2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvs2<",
            "TDelegateT;TAdapterT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljz1;Lvs2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljz1<",
            "TDelegateT;>;",
            "Lvs2<",
            "TDelegateT;TAdapterT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Liz1;->a:Ljz1;

    .line 3
    iput-object p2, p0, Liz1;->b:Lvs2;

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Liz1;->a:Ljz1;

    invoke-interface {v0, p1, p2}, Ljz1;->a(Lhl2;Lsk2;)Z

    move-result p1

    return p1
.end method

.method public final b(Lhl2;Lsk2;)Law2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "TAdapterT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liz1;->a:Ljz1;

    .line 2
    invoke-interface {v0, p1, p2}, Ljz1;->b(Lhl2;Lsk2;)Law2;

    move-result-object p1

    iget-object p2, p0, Liz1;->b:Lvs2;

    sget-object v0, Lms0;->a:Lzv2;

    .line 3
    invoke-static {p1, p2, v0}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1
.end method
