.class public abstract Lpg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lpg;->a:I

    .line 3
    iput p2, p0, Lpg;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(Lwg;)V
.end method
