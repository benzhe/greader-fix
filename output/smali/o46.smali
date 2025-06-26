.class public final synthetic Lo46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc7;


# static fields
.field public static final e:Lo46;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo46;

    invoke-direct {v0}, Lo46;-><init>()V

    sput-object v0, Lo46;->e:Lo46;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lm56;

    .line 1
    invoke-virtual {p1}, Lm56;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lm56;->b()Lea6;

    move-result-object p1

    invoke-virtual {p1}, Lea6;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
