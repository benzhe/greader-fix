.class public final Lgk1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lz80;

.field public b:Lu80;

.field public c:Lo90;

.field public d:Lj90;

.field public e:Led0;

.field public final f:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Ljava/lang/String;",
            "Lg90;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lm4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4<",
            "Ljava/lang/String;",
            "La90;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    iput-object v0, p0, Lgk1;->f:Lm4;

    .line 3
    new-instance v0, Lm4;

    invoke-direct {v0}, Lm4;-><init>()V

    iput-object v0, p0, Lgk1;->g:Lm4;

    return-void
.end method


# virtual methods
.method public final a()Ldk1;
    .locals 2

    .line 1
    new-instance v0, Ldk1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldk1;-><init>(Lgk1;Lhk1;)V

    return-object v0
.end method
