.class public final Lpg7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:Ltb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltb7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Lvb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltb7;Lvb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;",
            "Lvb7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpg7$b;->e:Ltb7;

    .line 3
    iput-object p2, p0, Lpg7$b;->f:Lvb7;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpg7$b;->f:Lvb7;

    iget-object v1, p0, Lpg7$b;->e:Ltb7;

    invoke-interface {v0, v1}, Lvb7;->a(Ltb7;)V

    return-void
.end method
