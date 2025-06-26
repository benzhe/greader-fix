.class public final Lio7;
.super Lgo7;
.source "SourceFile"


# static fields
.field public static final b:Lio7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio7;

    invoke-direct {v0}, Lio7;-><init>()V

    sput-object v0, Lio7;->b:Lio7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lgo7;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TimeSource(System.nanoTime())"

    return-object v0
.end method
