.class public Lfw6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfw6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lfw6$b;->a:Z

    .line 3
    iput-boolean v0, p0, Lfw6$b;->b:Z

    .line 4
    iput-boolean v0, p0, Lfw6$b;->c:Z

    .line 5
    iput-boolean v0, p0, Lfw6$b;->d:Z

    .line 6
    iput-boolean v0, p0, Lfw6$b;->e:Z

    return-void
.end method
