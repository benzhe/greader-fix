.class public final Lgn3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lgn3;->a:F

    .line 3
    iput p2, p0, Lgn3;->b:F

    add-float/2addr p1, p3

    .line 4
    iput p1, p0, Lgn3;->c:F

    add-float/2addr p2, p4

    .line 5
    iput p2, p0, Lgn3;->d:F

    .line 6
    iput p5, p0, Lgn3;->e:I

    return-void
.end method
