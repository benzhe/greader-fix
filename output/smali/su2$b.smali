.class public final Lsu2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsu2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Lsu2$b;

.field public static final d:Lsu2$b;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lsu2;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Lsu2$b;->d:Lsu2$b;

    .line 3
    sput-object v1, Lsu2$b;->c:Lsu2$b;

    return-void

    .line 4
    :cond_0
    new-instance v0, Lsu2$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lsu2$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lsu2$b;->d:Lsu2$b;

    .line 5
    new-instance v0, Lsu2$b;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lsu2$b;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lsu2$b;->c:Lsu2$b;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lsu2$b;->a:Z

    .line 3
    iput-object p2, p0, Lsu2$b;->b:Ljava/lang/Throwable;

    return-void
.end method
