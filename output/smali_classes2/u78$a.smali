.class public Lu78$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu78;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lu78$a;->a:I

    .line 3
    iput p2, p0, Lu78$a;->b:I

    .line 4
    iput-boolean p3, p0, Lu78$a;->c:Z

    return-void
.end method
