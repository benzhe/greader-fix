.class public Lgj6$b;
.super Lji6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lgj6<",
        "TT;*>;>",
        "Lji6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lgj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgj6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lji6;-><init>()V

    .line 2
    iput-object p1, p0, Lgj6$b;->b:Lgj6;

    return-void
.end method
