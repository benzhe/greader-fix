.class public Lz07;
.super Ly07;
.source "SourceFile"


# instance fields
.field public final c:La17;


# direct methods
.method public constructor <init>(Landroid/app/Activity;La17;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Ly07;-><init>(Landroid/app/Activity;II)V

    .line 2
    iput-object p2, p0, Lz07;->c:La17;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz07;->c:La17;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ly07;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3
    iget-object v0, p0, Ly07;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public b(F)V
    .locals 0

    .line 1
    iget-object p1, p0, Lz07;->c:La17;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lz07;->c:La17;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
