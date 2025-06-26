.class public final synthetic Lq26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llo5;


# instance fields
.field public final a:Lr26;


# direct methods
.method public constructor <init>(Lr26;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq26;->a:Lr26;

    return-void
.end method


# virtual methods
.method public a(Lko5;)V
    .locals 1

    iget-object v0, p0, Lq26;->a:Lr26;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, v0, Lr26;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    throw p1
.end method
