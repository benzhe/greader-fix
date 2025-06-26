.class public final synthetic Lae0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbt0;


# instance fields
.field public final a:Lyd0;


# direct methods
.method public constructor <init>(Lyd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lae0;->a:Lyd0;

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lae0;->a:Lyd0;

    check-cast p1, Lpd0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lpd0;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, v0, Lyd0;->h:I

    :cond_0
    return-void
.end method
