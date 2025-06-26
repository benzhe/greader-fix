.class public Ln5$d;
.super Ln5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln5;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;FJLz4;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Ln5;->h:Z

    return p1
.end method
