.class public abstract Lgj6$c;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lgj6$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;>",
        "Lgj6<",
        "TMessageType;TBuilderType;>;",
        "Ljava/lang/Object<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public extensions:Lcj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcj6<",
            "Lgj6$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    .line 2
    sget-object v0, Lcj6;->d:Lcj6;

    .line 3
    iput-object v0, p0, Lgj6$c;->extensions:Lcj6;

    return-void
.end method


# virtual methods
.method public B()Lcj6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcj6<",
            "Lgj6$d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgj6$c;->extensions:Lcj6;

    .line 2
    iget-boolean v1, v0, Lcj6;->b:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcj6;->a()Lcj6;

    move-result-object v0

    iput-object v0, p0, Lgj6$c;->extensions:Lcj6;

    .line 4
    :cond_0
    iget-object v0, p0, Lgj6$c;->extensions:Lcj6;

    return-object v0
.end method

.method public bridge synthetic c()Lak6;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6;->t()Lgj6;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lak6$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6;->A()Lgj6$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lak6$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6;->w()Lgj6$a;

    move-result-object v0

    return-object v0
.end method
