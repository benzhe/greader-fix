.class public Lb5$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lt4;

.field public b:[F

.field public c:[D

.field public d:[F

.field public e:[F

.field public f:Lp4;

.field public g:[D

.field public h:[D


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lt4;

    invoke-direct {p2}, Lt4;-><init>()V

    iput-object p2, p0, Lb5$d;->a:Lt4;

    .line 3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object p2, p0, Lb5$d;->a:Lt4;

    .line 5
    iput p1, p2, Lt4;->d:I

    .line 6
    new-array p1, p3, [F

    iput-object p1, p0, Lb5$d;->b:[F

    .line 7
    new-array p1, p3, [D

    iput-object p1, p0, Lb5$d;->c:[D

    .line 8
    new-array p1, p3, [F

    iput-object p1, p0, Lb5$d;->d:[F

    .line 9
    new-array p1, p3, [F

    iput-object p1, p0, Lb5$d;->e:[F

    .line 10
    new-array p1, p3, [F

    return-void
.end method
