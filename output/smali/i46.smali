.class public final synthetic Li46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# static fields
.field public static final e:Li46;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li46;

    invoke-direct {v0}, Li46;-><init>()V

    sput-object v0, Li46;->e:Li46;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkg6;

    .line 1
    invoke-virtual {p1}, Lkg6;->C()Lcz5;

    move-result-object v0

    invoke-virtual {v0}, Lcz5;->G()Lcz5$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p1, "Filtering non-displayable message"

    .line 2
    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    .line 3
    sget-object p1, Lbg7;->e:Lbg7;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
