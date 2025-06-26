.class public final Lko7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lko7;


# instance fields
.field public final synthetic a:Lio7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lko7;

    invoke-direct {v0}, Lko7;-><init>()V

    sput-object v0, Lko7;->b:Lko7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio7;->b:Lio7;

    iput-object v0, p0, Lko7;->a:Lio7;

    return-void
.end method


# virtual methods
.method public a()Ljo7;
    .locals 1

    iget-object v0, p0, Lko7;->a:Lio7;

    invoke-virtual {v0}, Lgo7;->a()Ljo7;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio7;->b:Lio7;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeSource(System.nanoTime())"

    return-object v0
.end method
