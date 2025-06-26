.class public final Lc90;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lui3;

.field public final c:Luh0;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lui3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lui3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc90;->d:Z

    .line 3
    iput-object p1, p0, Lc90;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lc90;->b:Lui3;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lc90;->c:Luh0;

    return-void
.end method

.method public constructor <init>(Luh0;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lc90;->d:Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lc90;->a:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lc90;->b:Lui3;

    .line 10
    iput-object p1, p0, Lc90;->c:Luh0;

    return-void
.end method
