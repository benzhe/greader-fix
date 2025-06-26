.class public final Ly15;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb20;

.field public b:J


# direct methods
.method public constructor <init>(Lb20;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ly15;->a:Lb20;

    return-void
.end method
