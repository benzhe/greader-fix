.class public final Lbt2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqs2;

.field public final b:Ldt2;

.field public final c:I


# direct methods
.method public constructor <init>(Ldt2;)V
    .locals 1

    .line 1
    sget-object v0, Lus2;->b:Lus2;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbt2;->b:Ldt2;

    .line 4
    iput-object v0, p0, Lbt2;->a:Lqs2;

    const p1, 0x7fffffff

    .line 5
    iput p1, p0, Lbt2;->c:I

    return-void
.end method
