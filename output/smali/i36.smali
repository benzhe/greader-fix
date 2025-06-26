.class public final synthetic Li36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc7;


# static fields
.field public static final a:Li36;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li36;

    invoke-direct {v0}, Li36;-><init>()V

    sput-object v0, Li36;->a:Li36;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "Rate limiter client write success"

    .line 1
    invoke-static {v0}, Ln56;->t1(Ljava/lang/String;)V

    return-void
.end method
