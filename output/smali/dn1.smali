.class public final Ldn1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lh70;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh70;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Ldn1;->a:I

    .line 8
    iput-object p1, p0, Ldn1;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Ldn1;->c:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Ldn1;->d:Lh70;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ldn1;->a:I

    .line 3
    iput-object p1, p0, Ldn1;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ldn1;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Ldn1;->d:Lh70;

    return-void
.end method
