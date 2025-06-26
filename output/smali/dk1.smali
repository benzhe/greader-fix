.class public final Ldk1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ldk1;


# instance fields
.field public final a:Lz80;

.field public final b:Lu80;

.field public final c:Lo90;

.field public final d:Lj90;

.field public final e:Led0;

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
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgk1;

    invoke-direct {v0}, Lgk1;-><init>()V

    .line 2
    invoke-virtual {v0}, Lgk1;->a()Ldk1;

    move-result-object v0

    sput-object v0, Ldk1;->h:Ldk1;

    return-void
.end method

.method public constructor <init>(Lgk1;Lhk1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lgk1;->a:Lz80;

    iput-object p2, p0, Ldk1;->a:Lz80;

    .line 3
    iget-object p2, p1, Lgk1;->b:Lu80;

    iput-object p2, p0, Ldk1;->b:Lu80;

    .line 4
    iget-object p2, p1, Lgk1;->c:Lo90;

    iput-object p2, p0, Ldk1;->c:Lo90;

    .line 5
    new-instance p2, Lm4;

    iget-object v0, p1, Lgk1;->f:Lm4;

    invoke-direct {p2, v0}, Lm4;-><init>(Lm4;)V

    iput-object p2, p0, Ldk1;->f:Lm4;

    .line 6
    new-instance p2, Lm4;

    iget-object v0, p1, Lgk1;->g:Lm4;

    invoke-direct {p2, v0}, Lm4;-><init>(Lm4;)V

    iput-object p2, p0, Ldk1;->g:Lm4;

    .line 7
    iget-object p2, p1, Lgk1;->d:Lj90;

    iput-object p2, p0, Ldk1;->d:Lj90;

    .line 8
    iget-object p1, p1, Lgk1;->e:Led0;

    iput-object p1, p0, Ldk1;->e:Led0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La90;
    .locals 2

    .line 1
    iget-object v0, p0, Ldk1;->g:Lm4;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lm4;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, La90;

    return-object p1
.end method
