.class public final Lx8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Lz8;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    .line 1
    invoke-static {v0}, Lx8;->a([Ljava/util/Locale;)Lx8;

    return-void
.end method

.method public constructor <init>(Lz8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx8;->a:Lz8;

    return-void
.end method

.method public static varargs a([Ljava/util/Locale;)Lx8;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 3
    new-instance p0, Lx8;

    new-instance v1, La9;

    invoke-direct {v1, v0}, La9;-><init>(Landroid/os/LocaleList;)V

    invoke-direct {p0, v1}, Lx8;-><init>(Lz8;)V

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lx8;

    new-instance v1, Ly8;

    invoke-direct {v1, p0}, Ly8;-><init>([Ljava/util/Locale;)V

    invoke-direct {v0, v1}, Lx8;-><init>(Lz8;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lx8;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx8;->a:Lz8;

    check-cast p1, Lx8;

    iget-object p1, p1, Lx8;->a:Lz8;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx8;->a:Lz8;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8;->a:Lz8;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
