.class public Ld0$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static a:Ljava/lang/reflect/Field;

.field public static b:Z

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static d:Z

.field public static e:Ljava/lang/reflect/Field;

.field public static f:Z

.field public static g:Ljava/lang/reflect/Field;

.field public static h:Z

.field public static i:Ljava/lang/reflect/Method;

.field public static j:Z

.field public static k:Ljava/lang/reflect/Method;

.field public static l:Z

.field public static m:Ljava/lang/reflect/Field;

.field public static n:Z

.field public static o:Ljava/lang/reflect/Method;

.field public static p:Z

.field public static q:Ljava/lang/reflect/Field;

.field public static r:Z


# direct methods
.method public static A(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-boolean v0, Ld0$h;->n:Z

    const-string v1, "CompoundButtonCompat"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ld0$h;->m:Ljava/lang/reflect/Field;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to retrieve mButtonDrawable field"

    .line 6
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    sput-boolean v0, Ld0$h;->n:Z

    .line 8
    :cond_1
    sget-object v0, Ld0$h;->m:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 9
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to get button drawable via reflection"

    .line 10
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    sput-object v2, Ld0$h;->m:Ljava/lang/reflect/Field;

    :cond_2
    return-object v2
.end method

.method public static B(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static C(Landroid/graphics/drawable/Drawable;)I
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-boolean v0, Ld0$h;->l:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    :try_start_0
    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "getLayoutDirection"

    new-array v5, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Ld0$h;->k:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    .line 7
    invoke-static {v1, v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_0
    sput-boolean v0, Ld0$h;->l:Z

    .line 9
    :cond_1
    sget-object v0, Ld0$h;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    const-string v0, "Failed to invoke getLayoutDirection() via reflection"

    .line 11
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 12
    sput-object p0, Ld0$h;->k:Ljava/lang/reflect/Method;

    :cond_2
    return v2
.end method

.method public static D()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, ".("

    .line 2
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static E(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "UNKNOWN"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "?"

    .line 2
    invoke-static {p0, p1}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method public static G(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Ld0$h;->I(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :try_start_1
    invoke-static {p0, v2}, Ld0$h;->I(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 5
    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    .line 7
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in manifest"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static H(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ld0$h;->I(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    .line 3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v1}, Ld0$h;->I(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static I(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/16 v3, 0x280

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_0

    const v3, 0x100c0280

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_1

    const v3, 0xc0280

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 4
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "android.support.PARENT_ACTIVITY"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_5

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public static J(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "UNDEFINED"

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static K(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ".font"

    .line 2
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-static {v1, v2}, Ljo;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    return-object v3

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static L(Landroid/widget/TextView;)Ln9$a;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ln9$a;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Ln9$a;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x17

    const/4 v6, 0x1

    if-lt v3, v5, :cond_1

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 6
    :goto_0
    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-lt v0, v5, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v3

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v7

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v5

    instance-of v5, v5, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v5, :cond_3

    .line 10
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_3
    if-lt v0, v1, :cond_6

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v4

    .line 14
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    .line 15
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    if-eq p0, v6, :cond_5

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 17
    :cond_5
    :goto_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v6, :cond_7

    const/4 v4, 0x1

    .line 19
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    if-eqz v4, :cond_8

    .line 20
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 21
    :pswitch_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 22
    :pswitch_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 23
    :pswitch_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 24
    :pswitch_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 25
    :pswitch_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 26
    :pswitch_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    .line 27
    :cond_8
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 28
    :goto_2
    new-instance v0, Ln9$a;

    invoke-direct {v0, v2, p0, v3, v7}, Ln9$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static M(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_9

    const/16 v0, 0x21

    if-eq p2, v0, :cond_6

    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 v0, 0x82

    if-ne p2, v0, :cond_2

    .line 1
    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_0

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_5

    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 4
    :cond_6
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_7

    iget p2, p0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_8

    :cond_7
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 5
    :cond_9
    iget p2, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_a

    iget p2, p0, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_b

    :cond_a
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-le p0, p1, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public static N(Landroid/app/NotificationManager;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    .line 1
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 4
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 6
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static P(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    .line 5
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    sub-int/2addr p1, p2

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static Q(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "r"

    .line 2
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 7
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    .line 10
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 11
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v0
.end method

.method public static R(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static S(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 3
    :goto_0
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    instance-of v0, p2, Lj3;

    if-eqz v0, :cond_0

    .line 5
    check-cast p2, Lj3;

    invoke-interface {p2}, Lj3;->a()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static T(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lw7;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_f

    const/4 v1, 0x0

    const-string v4, "font-family"

    move-object/from16 v5, p0

    .line 2
    invoke-interface {v5, v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 6
    sget-object v6, Landroidx/core/R$styleable;->FontFamily:[I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 7
    sget v6, Landroidx/core/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    sget v7, Landroidx/core/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 9
    sget v8, Landroidx/core/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 10
    sget v9, Landroidx/core/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 11
    sget v11, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    invoke-virtual {v4, v11, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 12
    sget v12, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v13, 0x1f4

    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 13
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 14
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 15
    invoke-static/range {p0 .. p0}, Ld0$h;->i0(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v0, v9}, Ld0$h;->V(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    .line 17
    new-instance v1, Lz7;

    new-instance v2, Lf9;

    invoke-direct {v2, v6, v7, v8, v0}, Lf9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v1, v2, v11, v12}, Lz7;-><init>(Lf9;II)V

    goto/16 :goto_a

    .line 18
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_c

    .line 20
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v2, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "font"

    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 23
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 24
    sget-object v8, Landroidx/core/R$styleable;->FontFamilyFont:[I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 25
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 26
    :cond_4
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_fontWeight:I

    :goto_3
    const/16 v9, 0x190

    .line 27
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 28
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    .line 29
    :cond_5
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_fontStyle:I

    .line 30
    :goto_4
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-ne v3, v8, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    .line 31
    :goto_5
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    .line 32
    :cond_7
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_ttcIndex:I

    .line 33
    :goto_6
    sget v9, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_7

    .line 34
    :cond_8
    sget v9, Landroidx/core/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    .line 35
    :goto_7
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 36
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 37
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_8

    .line 38
    :cond_9
    sget v8, Landroidx/core/R$styleable;->FontFamilyFont_android_font:I

    .line 39
    :goto_8
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 40
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 41
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    :goto_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_a

    .line 43
    invoke-static/range {p0 .. p0}, Ld0$h;->i0(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 44
    :cond_a
    new-instance v7, Ly7;

    move-object v11, v7

    invoke-direct/range {v11 .. v17}, Ly7;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    .line 45
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 46
    :cond_b
    invoke-static/range {p0 .. p0}, Ld0$h;->i0(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 47
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    .line 48
    :cond_d
    new-instance v1, Lx7;

    .line 49
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ly7;

    .line 50
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly7;

    invoke-direct {v1, v0}, Lx7;-><init>([Ly7;)V

    goto :goto_a

    .line 51
    :cond_e
    invoke-static/range {p0 .. p0}, Ld0$h;->i0(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_a
    return-object v1

    .line 52
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static U(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lw8;)Landroid/database/Cursor;
    .locals 8

    if-eqz p6, :cond_1

    .line 1
    :try_start_0
    monitor-enter p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v0, p6, Lw8;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p6, Lw8;->b:Ljava/lang/Object;

    .line 4
    iget-boolean v1, p6, Lw8;->a:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 6
    :cond_0
    iget-object v0, p6, Lw8;->b:Ljava/lang/Object;

    monitor-exit p6

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    move-object v7, v0

    check-cast v7, Landroid/os/CancellationSignal;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 9
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    instance-of p1, p0, Landroid/os/OperationCanceledException;

    if-eqz p1, :cond_2

    .line 11
    new-instance p0, Lb9;

    invoke-direct {p0}, Lb9;-><init>()V

    throw p0

    .line 12
    :cond_2
    throw p0
.end method

.method public static V(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 6
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 p1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 9
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld0$h;->j0([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld0$h;->j0([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    throw p0
.end method

.method public static W(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ld0$h;->g(I)I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    .line 7
    :cond_1
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 8
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_2

    add-int/2addr p1, v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 11
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public static X(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Ld0$h;->g(I)I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 6
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 9
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static Y(Landroid/graphics/drawable/Drawable;I)Z
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    sget-boolean v0, Ld0$h;->j:Z

    const-string v1, "DrawableCompat"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v4, "setLayoutDirection"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 5
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ld0$h;->i:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    .line 7
    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_0
    sput-boolean v3, Ld0$h;->j:Z

    .line 9
    :cond_1
    sget-object v0, Ld0$h;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception p0

    const-string p1, "Failed to invoke setLayoutDirection(int) via reflection"

    .line 11
    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 12
    sput-object p0, Ld0$h;->i:Ljava/lang/reflect/Method;

    :cond_2
    return v2
.end method

.method public static Z(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ld0$h;->g(I)I

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static a(Ld6;Lu5;I)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 1
    sget-object v11, Lc6$a;->g:Lc6$a;

    const/4 v12, 0x2

    if-nez p2, :cond_0

    .line 2
    iget v1, v0, Ld6;->K0:I

    .line 3
    iget-object v2, v0, Ld6;->N0:[La6;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, v0, Ld6;->L0:I

    .line 5
    iget-object v2, v0, Ld6;->M0:[La6;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_6d

    .line 6
    aget-object v1, v15, v9

    .line 7
    iget-boolean v2, v1, La6;->t:Z

    const/16 v17, 0x0

    const/16 v8, 0x8

    const/4 v4, 0x1

    if-nez v2, :cond_19

    .line 8
    iget v2, v1, La6;->o:I

    mul-int/lit8 v2, v2, 0x2

    .line 9
    iget-object v5, v1, La6;->a:Lc6;

    move-object v6, v5

    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_14

    .line 10
    iget v13, v1, La6;->i:I

    add-int/2addr v13, v4

    iput v13, v1, La6;->i:I

    .line 11
    iget-object v13, v5, Lc6;->z0:[Lc6;

    iget v3, v1, La6;->o:I

    aput-object v17, v13, v3

    .line 12
    iget-object v13, v5, Lc6;->y0:[Lc6;

    aput-object v17, v13, v3

    .line 13
    iget v13, v5, Lc6;->e0:I

    if-eq v13, v8, :cond_f

    .line 14
    iget v13, v1, La6;->l:I

    add-int/2addr v13, v4

    iput v13, v1, La6;->l:I

    .line 15
    invoke-virtual {v5, v3}, Lc6;->m(I)Lc6$a;

    move-result-object v3

    if-eq v3, v11, :cond_3

    .line 16
    iget v3, v1, La6;->m:I

    iget v13, v1, La6;->o:I

    if-nez v13, :cond_1

    .line 17
    invoke-virtual {v5}, Lc6;->t()I

    move-result v13

    goto :goto_3

    :cond_1
    if-ne v13, v4, :cond_2

    .line 18
    invoke-virtual {v5}, Lc6;->n()I

    move-result v13

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    add-int/2addr v3, v13

    .line 19
    iput v3, v1, La6;->m:I

    .line 20
    :cond_3
    iget v3, v1, La6;->m:I

    iget-object v13, v5, Lc6;->I:[Lb6;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lb6;->c()I

    move-result v13

    add-int/2addr v13, v3

    iput v13, v1, La6;->m:I

    .line 21
    iget-object v3, v5, Lc6;->I:[Lb6;

    add-int/lit8 v20, v2, 0x1

    aget-object v3, v3, v20

    invoke-virtual {v3}, Lb6;->c()I

    move-result v3

    add-int/2addr v3, v13

    iput v3, v1, La6;->m:I

    .line 22
    iget v3, v1, La6;->n:I

    iget-object v13, v5, Lc6;->I:[Lb6;

    aget-object v13, v13, v2

    invoke-virtual {v13}, Lb6;->c()I

    move-result v13

    add-int/2addr v13, v3

    iput v13, v1, La6;->n:I

    .line 23
    iget-object v3, v5, Lc6;->I:[Lb6;

    aget-object v3, v3, v20

    invoke-virtual {v3}, Lb6;->c()I

    move-result v3

    add-int/2addr v3, v13

    iput v3, v1, La6;->n:I

    .line 24
    iget-object v3, v1, La6;->b:Lc6;

    if-nez v3, :cond_4

    .line 25
    iput-object v5, v1, La6;->b:Lc6;

    .line 26
    :cond_4
    iput-object v5, v1, La6;->d:Lc6;

    .line 27
    iget-object v3, v5, Lc6;->L:[Lc6$a;

    iget v13, v1, La6;->o:I

    aget-object v8, v3, v13

    if-ne v8, v11, :cond_f

    .line 28
    iget-object v8, v5, Lc6;->l:[I

    aget v21, v8, v13

    const/4 v4, 0x3

    if-eqz v21, :cond_6

    aget v12, v8, v13

    if-eq v12, v4, :cond_6

    aget v12, v8, v13

    const/4 v4, 0x2

    if-ne v12, v4, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v24, v7

    goto :goto_8

    .line 29
    :cond_6
    :goto_4
    iget v4, v1, La6;->j:I

    const/4 v12, 0x1

    add-int/2addr v4, v12

    iput v4, v1, La6;->j:I

    .line 30
    iget-object v4, v5, Lc6;->x0:[F

    aget v12, v4, v13

    const/16 v19, 0x0

    cmpl-float v24, v12, v19

    if-lez v24, :cond_7

    move/from16 v24, v7

    .line 31
    iget v7, v1, La6;->k:F

    aget v4, v4, v13

    add-float/2addr v7, v4

    iput v7, v1, La6;->k:F

    goto :goto_5

    :cond_7
    move/from16 v24, v7

    .line 32
    :goto_5
    iget v4, v5, Lc6;->e0:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_9

    .line 33
    aget-object v3, v3, v13

    if-ne v3, v11, :cond_9

    aget v3, v8, v13

    if-eqz v3, :cond_8

    aget v3, v8, v13

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    :cond_8
    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_c

    const/4 v3, 0x0

    cmpg-float v4, v12, v3

    if-gez v4, :cond_a

    const/4 v3, 0x1

    .line 34
    iput-boolean v3, v1, La6;->q:Z

    goto :goto_7

    :cond_a
    const/4 v3, 0x1

    .line 35
    iput-boolean v3, v1, La6;->r:Z

    .line 36
    :goto_7
    iget-object v3, v1, La6;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, La6;->h:Ljava/util/ArrayList;

    .line 38
    :cond_b
    iget-object v3, v1, La6;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_c
    iget-object v3, v1, La6;->f:Lc6;

    if-nez v3, :cond_d

    .line 40
    iput-object v5, v1, La6;->f:Lc6;

    .line 41
    :cond_d
    iget-object v3, v1, La6;->g:Lc6;

    if-eqz v3, :cond_e

    .line 42
    iget-object v3, v3, Lc6;->y0:[Lc6;

    iget v4, v1, La6;->o:I

    aput-object v5, v3, v4

    .line 43
    :cond_e
    iput-object v5, v1, La6;->g:Lc6;

    .line 44
    :goto_8
    iget v3, v1, La6;->o:I

    goto :goto_9

    :cond_f
    move/from16 v24, v7

    :goto_9
    if-eq v6, v5, :cond_10

    .line 45
    iget-object v3, v6, Lc6;->z0:[Lc6;

    iget v4, v1, La6;->o:I

    aput-object v5, v3, v4

    .line 46
    :cond_10
    iget-object v3, v5, Lc6;->I:[Lb6;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lb6;->d:Lb6;

    if-eqz v3, :cond_11

    .line 47
    iget-object v3, v3, Lb6;->b:Lc6;

    .line 48
    iget-object v4, v3, Lc6;->I:[Lb6;

    aget-object v6, v4, v2

    iget-object v6, v6, Lb6;->d:Lb6;

    if-eqz v6, :cond_11

    aget-object v4, v4, v2

    iget-object v4, v4, Lb6;->d:Lb6;

    iget-object v4, v4, Lb6;->b:Lc6;

    if-eq v4, v5, :cond_12

    :cond_11
    move-object/from16 v3, v17

    :cond_12
    if-eqz v3, :cond_13

    move/from16 v7, v24

    goto :goto_a

    :cond_13
    move-object v3, v5

    const/4 v7, 0x1

    :goto_a
    move-object v6, v5

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v12, 0x2

    move-object v5, v3

    goto/16 :goto_2

    .line 49
    :cond_14
    iget-object v3, v1, La6;->b:Lc6;

    if-eqz v3, :cond_15

    .line 50
    iget v4, v1, La6;->m:I

    iget-object v3, v3, Lc6;->I:[Lb6;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lb6;->c()I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v1, La6;->m:I

    .line 51
    :cond_15
    iget-object v3, v1, La6;->d:Lc6;

    if-eqz v3, :cond_16

    .line 52
    iget v4, v1, La6;->m:I

    iget-object v3, v3, Lc6;->I:[Lb6;

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, v1, La6;->m:I

    .line 53
    :cond_16
    iput-object v5, v1, La6;->c:Lc6;

    .line 54
    iget v2, v1, La6;->o:I

    if-nez v2, :cond_17

    iget-boolean v2, v1, La6;->p:Z

    if-eqz v2, :cond_17

    .line 55
    iput-object v5, v1, La6;->e:Lc6;

    goto :goto_b

    .line 56
    :cond_17
    iget-object v2, v1, La6;->a:Lc6;

    iput-object v2, v1, La6;->e:Lc6;

    .line 57
    :goto_b
    iget-boolean v2, v1, La6;->r:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, La6;->q:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, v1, La6;->s:Z

    :cond_19
    const/4 v2, 0x1

    .line 58
    iput-boolean v2, v1, La6;->t:Z

    .line 59
    iget-object v12, v1, La6;->a:Lc6;

    .line 60
    iget-object v13, v1, La6;->c:Lc6;

    .line 61
    iget-object v8, v1, La6;->b:Lc6;

    .line 62
    iget-object v7, v1, La6;->d:Lc6;

    .line 63
    iget-object v2, v1, La6;->e:Lc6;

    .line 64
    iget v3, v1, La6;->k:F

    .line 65
    iget-object v4, v0, Lc6;->L:[Lc6$a;

    aget-object v4, v4, p2

    sget-object v5, Lc6$a;->f:Lc6$a;

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x1

    goto :goto_d

    :cond_1a
    const/4 v4, 0x0

    :goto_d
    if-nez p2, :cond_1e

    .line 66
    iget v5, v2, Lc6;->t0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1b

    const/16 v22, 0x1

    goto :goto_e

    :cond_1b
    const/16 v22, 0x0

    :goto_e
    move/from16 v23, v9

    const/4 v9, 0x2

    if-ne v5, v6, :cond_1c

    const/16 v21, 0x1

    goto :goto_f

    :cond_1c
    const/16 v21, 0x0

    :goto_f
    if-ne v5, v9, :cond_1d

    move/from16 v5, v22

    goto :goto_12

    :cond_1d
    move/from16 v5, v22

    goto :goto_13

    :cond_1e
    move/from16 v23, v9

    const/4 v6, 0x1

    const/4 v9, 0x2

    .line 67
    iget v5, v2, Lc6;->u0:I

    if-nez v5, :cond_1f

    const/16 v21, 0x1

    goto :goto_10

    :cond_1f
    const/16 v21, 0x0

    :goto_10
    if-ne v5, v6, :cond_20

    const/4 v6, 0x1

    goto :goto_11

    :cond_20
    const/4 v6, 0x0

    :goto_11
    if-ne v5, v9, :cond_21

    move/from16 v5, v21

    move/from16 v21, v6

    :goto_12
    move/from16 v24, v21

    move/from16 v21, v5

    const/4 v5, 0x1

    goto :goto_14

    :cond_21
    move/from16 v5, v21

    move/from16 v21, v6

    :goto_13
    move/from16 v24, v21

    move/from16 v21, v5

    const/4 v5, 0x0

    :goto_14
    move/from16 v26, v3

    move-object v9, v12

    const/4 v6, 0x0

    :goto_15
    if-nez v6, :cond_2e

    .line 68
    iget-object v3, v9, Lc6;->I:[Lb6;

    aget-object v3, v3, v16

    if-eqz v5, :cond_22

    const/16 v28, 0x1

    goto :goto_16

    :cond_22
    const/16 v28, 0x4

    .line 69
    :goto_16
    invoke-virtual {v3}, Lb6;->c()I

    move-result v29

    move/from16 v30, v6

    .line 70
    iget-object v6, v9, Lc6;->L:[Lc6$a;

    aget-object v6, v6, p2

    if-ne v6, v11, :cond_23

    iget-object v6, v9, Lc6;->l:[I

    aget v6, v6, p2

    if-nez v6, :cond_23

    move/from16 v31, v14

    const/4 v6, 0x1

    goto :goto_17

    :cond_23
    move/from16 v31, v14

    const/4 v6, 0x0

    .line 71
    :goto_17
    iget-object v14, v3, Lb6;->d:Lb6;

    if-eqz v14, :cond_24

    if-eq v9, v12, :cond_24

    .line 72
    invoke-virtual {v14}, Lb6;->c()I

    move-result v14

    add-int v29, v14, v29

    :cond_24
    move/from16 v14, v29

    if-eqz v5, :cond_25

    if-eq v9, v12, :cond_25

    if-eq v9, v8, :cond_25

    move-object/from16 v29, v15

    const/16 v28, 0x5

    goto :goto_18

    :cond_25
    move-object/from16 v29, v15

    .line 73
    :goto_18
    iget-object v15, v3, Lb6;->d:Lb6;

    if-eqz v15, :cond_28

    if-ne v9, v8, :cond_26

    move-object/from16 v32, v2

    .line 74
    iget-object v2, v3, Lb6;->g:Lx5;

    iget-object v15, v15, Lb6;->g:Lx5;

    move-object/from16 v33, v12

    const/4 v12, 0x6

    invoke-virtual {v10, v2, v15, v14, v12}, Lu5;->f(Lx5;Lx5;II)V

    goto :goto_19

    :cond_26
    move-object/from16 v32, v2

    move-object/from16 v33, v12

    .line 75
    iget-object v2, v3, Lb6;->g:Lx5;

    iget-object v12, v15, Lb6;->g:Lx5;

    const/16 v15, 0x8

    invoke-virtual {v10, v2, v12, v14, v15}, Lu5;->f(Lx5;Lx5;II)V

    :goto_19
    if-eqz v6, :cond_27

    if-nez v5, :cond_27

    const/4 v2, 0x5

    goto :goto_1a

    :cond_27
    move/from16 v2, v28

    .line 76
    :goto_1a
    iget-object v6, v3, Lb6;->g:Lx5;

    iget-object v3, v3, Lb6;->d:Lb6;

    iget-object v3, v3, Lb6;->g:Lx5;

    invoke-virtual {v10, v6, v3, v14, v2}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto :goto_1b

    :cond_28
    move-object/from16 v32, v2

    move-object/from16 v33, v12

    :goto_1b
    if-eqz v4, :cond_2a

    .line 77
    iget v2, v9, Lc6;->e0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_29

    .line 78
    iget-object v2, v9, Lc6;->L:[Lc6$a;

    aget-object v2, v2, p2

    if-ne v2, v11, :cond_29

    .line 79
    iget-object v2, v9, Lc6;->I:[Lb6;

    add-int/lit8 v3, v16, 0x1

    aget-object v3, v2, v3

    iget-object v3, v3, Lb6;->g:Lx5;

    aget-object v2, v2, v16

    iget-object v2, v2, Lb6;->g:Lx5;

    const/4 v6, 0x5

    const/4 v12, 0x0

    invoke-virtual {v10, v3, v2, v12, v6}, Lu5;->f(Lx5;Lx5;II)V

    goto :goto_1c

    :cond_29
    const/4 v12, 0x0

    .line 80
    :goto_1c
    iget-object v2, v9, Lc6;->I:[Lb6;

    aget-object v2, v2, v16

    iget-object v2, v2, Lb6;->g:Lx5;

    iget-object v3, v0, Lc6;->I:[Lb6;

    aget-object v3, v3, v16

    iget-object v3, v3, Lb6;->g:Lx5;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v12, v6}, Lu5;->f(Lx5;Lx5;II)V

    .line 81
    :cond_2a
    iget-object v2, v9, Lc6;->I:[Lb6;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lb6;->d:Lb6;

    if-eqz v2, :cond_2b

    .line 82
    iget-object v2, v2, Lb6;->b:Lc6;

    .line 83
    iget-object v3, v2, Lc6;->I:[Lb6;

    aget-object v6, v3, v16

    iget-object v6, v6, Lb6;->d:Lb6;

    if-eqz v6, :cond_2b

    aget-object v3, v3, v16

    iget-object v3, v3, Lb6;->d:Lb6;

    iget-object v3, v3, Lb6;->b:Lc6;

    if-eq v3, v9, :cond_2c

    :cond_2b
    move-object/from16 v2, v17

    :cond_2c
    if-eqz v2, :cond_2d

    move-object v9, v2

    move/from16 v6, v30

    goto :goto_1d

    :cond_2d
    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v15, v29

    move/from16 v14, v31

    move-object/from16 v2, v32

    move-object/from16 v12, v33

    goto/16 :goto_15

    :cond_2e
    move-object/from16 v32, v2

    move-object/from16 v33, v12

    move/from16 v31, v14

    move-object/from16 v29, v15

    if-eqz v7, :cond_32

    .line 84
    iget-object v2, v13, Lc6;->I:[Lb6;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lb6;->d:Lb6;

    if-eqz v2, :cond_32

    .line 85
    iget-object v2, v7, Lc6;->I:[Lb6;

    aget-object v2, v2, v3

    .line 86
    iget-object v6, v7, Lc6;->L:[Lc6$a;

    aget-object v6, v6, p2

    if-ne v6, v11, :cond_2f

    iget-object v6, v7, Lc6;->l:[I

    aget v6, v6, p2

    if-nez v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_1e

    :cond_2f
    const/4 v6, 0x0

    :goto_1e
    if-eqz v6, :cond_30

    if-nez v5, :cond_30

    .line 87
    iget-object v6, v2, Lb6;->d:Lb6;

    iget-object v9, v6, Lb6;->b:Lc6;

    if-ne v9, v0, :cond_30

    .line 88
    iget-object v9, v2, Lb6;->g:Lx5;

    iget-object v6, v6, Lb6;->g:Lx5;

    invoke-virtual {v2}, Lb6;->c()I

    move-result v12

    neg-int v12, v12

    const/4 v14, 0x5

    invoke-virtual {v10, v9, v6, v12, v14}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto :goto_1f

    :cond_30
    const/4 v14, 0x5

    if-eqz v5, :cond_31

    .line 89
    iget-object v6, v2, Lb6;->d:Lb6;

    iget-object v9, v6, Lb6;->b:Lc6;

    if-ne v9, v0, :cond_31

    .line 90
    iget-object v9, v2, Lb6;->g:Lx5;

    iget-object v6, v6, Lb6;->g:Lx5;

    invoke-virtual {v2}, Lb6;->c()I

    move-result v12

    neg-int v12, v12

    const/4 v15, 0x4

    invoke-virtual {v10, v9, v6, v12, v15}, Lu5;->d(Lx5;Lx5;II)Ls5;

    .line 91
    :cond_31
    :goto_1f
    iget-object v6, v2, Lb6;->g:Lx5;

    iget-object v9, v13, Lc6;->I:[Lb6;

    aget-object v3, v9, v3

    iget-object v3, v3, Lb6;->d:Lb6;

    iget-object v3, v3, Lb6;->g:Lx5;

    .line 92
    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    neg-int v2, v2

    const/4 v9, 0x6

    .line 93
    invoke-virtual {v10, v6, v3, v2, v9}, Lu5;->g(Lx5;Lx5;II)V

    goto :goto_20

    :cond_32
    const/4 v14, 0x5

    :goto_20
    if-eqz v4, :cond_33

    .line 94
    iget-object v2, v0, Lc6;->I:[Lb6;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lb6;->g:Lx5;

    iget-object v4, v13, Lc6;->I:[Lb6;

    aget-object v6, v4, v3

    iget-object v6, v6, Lb6;->g:Lx5;

    aget-object v3, v4, v3

    .line 95
    invoke-virtual {v3}, Lb6;->c()I

    move-result v3

    const/16 v4, 0x8

    .line 96
    invoke-virtual {v10, v2, v6, v3, v4}, Lu5;->f(Lx5;Lx5;II)V

    .line 97
    :cond_33
    iget-object v2, v1, La6;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3d

    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3d

    .line 99
    iget-boolean v6, v1, La6;->q:Z

    if-eqz v6, :cond_34

    iget-boolean v6, v1, La6;->s:Z

    if-nez v6, :cond_34

    .line 100
    iget v6, v1, La6;->j:I

    int-to-float v6, v6

    goto :goto_21

    :cond_34
    move/from16 v6, v26

    :goto_21
    move-object/from16 v15, v17

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_22
    if-ge v12, v3, :cond_3d

    .line 101
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v4, v22

    check-cast v4, Lc6;

    .line 102
    iget-object v14, v4, Lc6;->x0:[F

    aget v14, v14, p2

    const/16 v19, 0x0

    cmpg-float v22, v14, v19

    if-gez v22, :cond_36

    .line 103
    iget-boolean v14, v1, La6;->s:Z

    if-eqz v14, :cond_35

    .line 104
    iget-object v0, v4, Lc6;->I:[Lb6;

    add-int/lit8 v4, v16, 0x1

    aget-object v4, v0, v4

    iget-object v4, v4, Lb6;->g:Lx5;

    aget-object v0, v0, v16

    iget-object v0, v0, Lb6;->g:Lx5;

    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/4 v14, 0x4

    invoke-virtual {v10, v4, v0, v2, v14}, Lu5;->d(Lx5;Lx5;II)Ls5;

    const/4 v14, 0x0

    const/16 v27, 0x4

    goto :goto_24

    :cond_35
    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v27, 0x4

    goto :goto_23

    :cond_36
    move-object/from16 v22, v2

    const/16 v27, 0x4

    const/4 v2, 0x0

    :goto_23
    cmpl-float v28, v14, v2

    if-nez v28, :cond_37

    .line 105
    iget-object v0, v4, Lc6;->I:[Lb6;

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v0, v2

    iget-object v2, v2, Lb6;->g:Lx5;

    aget-object v0, v0, v16

    iget-object v0, v0, Lb6;->g:Lx5;

    const/16 v4, 0x8

    const/4 v14, 0x0

    invoke-virtual {v10, v2, v0, v14, v4}, Lu5;->d(Lx5;Lx5;II)Ls5;

    :goto_24
    move-object/from16 v19, v1

    move/from16 v34, v3

    move-object/from16 v35, v11

    const/16 v18, 0x0

    goto/16 :goto_28

    :cond_37
    const/16 v18, 0x0

    if-eqz v15, :cond_3c

    .line 106
    iget-object v2, v15, Lc6;->I:[Lb6;

    aget-object v15, v2, v16

    iget-object v15, v15, Lb6;->g:Lx5;

    add-int/lit8 v30, v16, 0x1

    .line 107
    aget-object v2, v2, v30

    iget-object v2, v2, Lb6;->g:Lx5;

    .line 108
    iget-object v0, v4, Lc6;->I:[Lb6;

    move/from16 v34, v3

    aget-object v3, v0, v16

    iget-object v3, v3, Lb6;->g:Lx5;

    .line 109
    aget-object v0, v0, v30

    iget-object v0, v0, Lb6;->g:Lx5;

    move-object/from16 v30, v4

    .line 110
    invoke-virtual/range {p1 .. p1}, Lu5;->m()Ls5;

    move-result-object v4

    move-object/from16 v35, v11

    const/4 v11, 0x0

    .line 111
    iput v11, v4, Ls5;->b:F

    move-object/from16 v19, v1

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v36, v6, v11

    if-eqz v36, :cond_3b

    cmpl-float v36, v9, v14

    if-nez v36, :cond_38

    goto :goto_25

    :cond_38
    cmpl-float v36, v9, v11

    if-nez v36, :cond_39

    .line 112
    iget-object v0, v4, Ls5;->d:Ls5$a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v15, v3}, Ls5$a;->i(Lx5;F)V

    .line 113
    iget-object v0, v4, Ls5;->d:Ls5$a;

    invoke-interface {v0, v2, v1}, Ls5$a;->i(Lx5;F)V

    goto :goto_26

    :cond_39
    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v28, :cond_3a

    .line 114
    iget-object v2, v4, Ls5;->d:Ls5$a;

    invoke-interface {v2, v3, v11}, Ls5$a;->i(Lx5;F)V

    .line 115
    iget-object v2, v4, Ls5;->d:Ls5$a;

    invoke-interface {v2, v0, v1}, Ls5$a;->i(Lx5;F)V

    goto :goto_26

    :cond_3a
    div-float/2addr v9, v6

    div-float v28, v14, v6

    div-float v9, v9, v28

    .line 116
    iget-object v1, v4, Ls5;->d:Ls5$a;

    invoke-interface {v1, v15, v11}, Ls5$a;->i(Lx5;F)V

    .line 117
    iget-object v1, v4, Ls5;->d:Ls5$a;

    const/high16 v11, -0x40800000    # -1.0f

    invoke-interface {v1, v2, v11}, Ls5$a;->i(Lx5;F)V

    .line 118
    iget-object v1, v4, Ls5;->d:Ls5$a;

    invoke-interface {v1, v0, v9}, Ls5$a;->i(Lx5;F)V

    .line 119
    iget-object v0, v4, Ls5;->d:Ls5$a;

    neg-float v1, v9

    invoke-interface {v0, v3, v1}, Ls5$a;->i(Lx5;F)V

    goto :goto_26

    :cond_3b
    :goto_25
    const/high16 v11, 0x3f800000    # 1.0f

    .line 120
    iget-object v9, v4, Ls5;->d:Ls5$a;

    invoke-interface {v9, v15, v11}, Ls5$a;->i(Lx5;F)V

    .line 121
    iget-object v9, v4, Ls5;->d:Ls5$a;

    invoke-interface {v9, v2, v1}, Ls5$a;->i(Lx5;F)V

    .line 122
    iget-object v2, v4, Ls5;->d:Ls5$a;

    invoke-interface {v2, v0, v11}, Ls5$a;->i(Lx5;F)V

    .line 123
    iget-object v0, v4, Ls5;->d:Ls5$a;

    invoke-interface {v0, v3, v1}, Ls5$a;->i(Lx5;F)V

    .line 124
    :goto_26
    invoke-virtual {v10, v4}, Lu5;->c(Ls5;)V

    goto :goto_27

    :cond_3c
    move-object/from16 v19, v1

    move/from16 v34, v3

    move-object/from16 v30, v4

    move-object/from16 v35, v11

    :goto_27
    move v9, v14

    move-object/from16 v15, v30

    :goto_28
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    const/4 v14, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v34

    move-object/from16 v11, v35

    goto/16 :goto_22

    :cond_3d
    move-object/from16 v19, v1

    move-object/from16 v35, v11

    const/16 v18, 0x0

    const/16 v27, 0x4

    if-eqz v8, :cond_44

    if-eq v8, v7, :cond_3e

    if-eqz v5, :cond_44

    :cond_3e
    move-object/from16 v0, v33

    .line 125
    iget-object v0, v0, Lc6;->I:[Lb6;

    aget-object v0, v0, v16

    .line 126
    iget-object v1, v13, Lc6;->I:[Lb6;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    .line 127
    iget-object v0, v0, Lb6;->d:Lb6;

    if-eqz v0, :cond_3f

    iget-object v0, v0, Lb6;->g:Lx5;

    move-object v3, v0

    goto :goto_29

    :cond_3f
    move-object/from16 v3, v17

    .line 128
    :goto_29
    iget-object v0, v1, Lb6;->d:Lb6;

    if-eqz v0, :cond_40

    iget-object v0, v0, Lb6;->g:Lx5;

    move-object v6, v0

    goto :goto_2a

    :cond_40
    move-object/from16 v6, v17

    .line 129
    :goto_2a
    iget-object v0, v8, Lc6;->I:[Lb6;

    aget-object v0, v0, v16

    .line 130
    iget-object v1, v7, Lc6;->I:[Lb6;

    aget-object v1, v1, v2

    if-eqz v3, :cond_42

    if-eqz v6, :cond_42

    if-nez p2, :cond_41

    move-object/from16 v2, v32

    .line 131
    iget v2, v2, Lc6;->a0:F

    goto :goto_2b

    :cond_41
    move-object/from16 v2, v32

    .line 132
    iget v2, v2, Lc6;->b0:F

    :goto_2b
    move v5, v2

    .line 133
    invoke-virtual {v0}, Lb6;->c()I

    move-result v4

    .line 134
    invoke-virtual {v1}, Lb6;->c()I

    move-result v9

    .line 135
    iget-object v2, v0, Lb6;->g:Lx5;

    iget-object v0, v1, Lb6;->g:Lx5;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    move-object v12, v7

    move-object v7, v0

    move-object v14, v8

    move v8, v9

    move/from16 v15, v23

    const/16 v22, 0x2

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Lu5;->b(Lx5;Lx5;IFLx5;Lx5;II)V

    goto :goto_2c

    :cond_42
    move-object v12, v7

    move-object v14, v8

    move/from16 v15, v23

    const/16 v22, 0x2

    :cond_43
    :goto_2c
    move/from16 v28, v15

    goto/16 :goto_46

    :cond_44
    move-object v12, v7

    move-object v14, v8

    move/from16 v15, v23

    move-object/from16 v0, v33

    const/16 v22, 0x2

    if-eqz v21, :cond_56

    if-eqz v14, :cond_56

    move-object/from16 v1, v19

    .line 136
    iget v2, v1, La6;->j:I

    if-lez v2, :cond_45

    iget v1, v1, La6;->i:I

    if-ne v1, v2, :cond_45

    const/16 v26, 0x1

    goto :goto_2d

    :cond_45
    const/16 v26, 0x0

    :goto_2d
    move-object v9, v14

    move-object v11, v9

    :goto_2e
    if-eqz v11, :cond_43

    .line 137
    iget-object v1, v11, Lc6;->z0:[Lc6;

    aget-object v1, v1, p2

    move-object v8, v1

    :goto_2f
    if-eqz v8, :cond_46

    .line 138
    iget v1, v8, Lc6;->e0:I

    const/16 v7, 0x8

    if-ne v1, v7, :cond_47

    .line 139
    iget-object v1, v8, Lc6;->z0:[Lc6;

    aget-object v8, v1, p2

    goto :goto_2f

    :cond_46
    const/16 v7, 0x8

    :cond_47
    if-nez v8, :cond_49

    if-ne v11, v12, :cond_48

    goto :goto_30

    :cond_48
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v28, v15

    const/16 v15, 0x8

    goto/16 :goto_38

    .line 140
    :cond_49
    :goto_30
    iget-object v1, v11, Lc6;->I:[Lb6;

    aget-object v1, v1, v16

    .line 141
    iget-object v2, v1, Lb6;->g:Lx5;

    .line 142
    iget-object v3, v1, Lb6;->d:Lb6;

    if-eqz v3, :cond_4a

    iget-object v3, v3, Lb6;->g:Lx5;

    goto :goto_31

    :cond_4a
    move-object/from16 v3, v17

    :goto_31
    if-eq v9, v11, :cond_4b

    .line 143
    iget-object v3, v9, Lc6;->I:[Lb6;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lb6;->g:Lx5;

    goto :goto_32

    :cond_4b
    if-ne v11, v14, :cond_4d

    if-ne v9, v11, :cond_4d

    .line 144
    iget-object v3, v0, Lc6;->I:[Lb6;

    aget-object v4, v3, v16

    iget-object v4, v4, Lb6;->d:Lb6;

    if-eqz v4, :cond_4c

    aget-object v3, v3, v16

    iget-object v3, v3, Lb6;->d:Lb6;

    iget-object v3, v3, Lb6;->g:Lx5;

    goto :goto_32

    :cond_4c
    move-object/from16 v3, v17

    .line 145
    :cond_4d
    :goto_32
    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    .line 146
    iget-object v4, v11, Lc6;->I:[Lb6;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lb6;->c()I

    move-result v4

    if-eqz v8, :cond_4e

    .line 147
    iget-object v6, v8, Lc6;->I:[Lb6;

    aget-object v6, v6, v16

    .line 148
    iget-object v7, v6, Lb6;->g:Lx5;

    move-object/from16 v19, v6

    .line 149
    iget-object v6, v11, Lc6;->I:[Lb6;

    aget-object v6, v6, v5

    iget-object v6, v6, Lb6;->g:Lx5;

    :goto_33
    move-object/from16 v37, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v37

    goto :goto_35

    .line 150
    :cond_4e
    iget-object v6, v13, Lc6;->I:[Lb6;

    aget-object v6, v6, v5

    iget-object v6, v6, Lb6;->d:Lb6;

    if-eqz v6, :cond_4f

    .line 151
    iget-object v7, v6, Lb6;->g:Lx5;

    move-object/from16 v19, v6

    goto :goto_34

    :cond_4f
    move-object/from16 v19, v6

    move-object/from16 v7, v17

    .line 152
    :goto_34
    iget-object v6, v11, Lc6;->I:[Lb6;

    aget-object v6, v6, v5

    iget-object v6, v6, Lb6;->g:Lx5;

    goto :goto_33

    :goto_35
    if-eqz v6, :cond_50

    .line 153
    invoke-virtual {v6}, Lb6;->c()I

    move-result v6

    add-int/2addr v4, v6

    :cond_50
    if-eqz v9, :cond_51

    .line 154
    iget-object v6, v9, Lc6;->I:[Lb6;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lb6;->c()I

    move-result v6

    add-int/2addr v1, v6

    :cond_51
    if-eqz v2, :cond_48

    if-eqz v3, :cond_48

    if-eqz v7, :cond_48

    if-eqz v19, :cond_48

    if-ne v11, v14, :cond_52

    .line 155
    iget-object v1, v14, Lc6;->I:[Lb6;

    aget-object v1, v1, v16

    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    :cond_52
    move v6, v1

    if-ne v11, v12, :cond_53

    .line 156
    iget-object v1, v12, Lc6;->I:[Lb6;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    move/from16 v23, v1

    goto :goto_36

    :cond_53
    move/from16 v23, v4

    :goto_36
    if-eqz v26, :cond_54

    const/16 v25, 0x8

    goto :goto_37

    :cond_54
    const/16 v25, 0x5

    :goto_37
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/4 v4, 0x5

    move/from16 v28, v15

    const/4 v15, 0x5

    move v4, v6

    move-object v6, v7

    const/16 v20, 0x8

    move-object/from16 v7, v19

    move-object/from16 v19, v8

    const/16 v15, 0x8

    move/from16 v8, v23

    move-object/from16 v20, v9

    move/from16 v9, v25

    .line 157
    invoke-virtual/range {v1 .. v9}, Lu5;->b(Lx5;Lx5;IFLx5;Lx5;II)V

    .line 158
    :goto_38
    iget v1, v11, Lc6;->e0:I

    if-eq v1, v15, :cond_55

    move-object v9, v11

    goto :goto_39

    :cond_55
    move-object/from16 v9, v20

    :goto_39
    move-object/from16 v11, v19

    move/from16 v15, v28

    goto/16 :goto_2e

    :cond_56
    move/from16 v28, v15

    move-object/from16 v1, v19

    const/16 v15, 0x8

    if-eqz v24, :cond_65

    if-eqz v14, :cond_65

    .line 159
    iget v2, v1, La6;->j:I

    if-lez v2, :cond_57

    iget v1, v1, La6;->i:I

    if-ne v1, v2, :cond_57

    const/16 v26, 0x1

    goto :goto_3a

    :cond_57
    const/16 v26, 0x0

    :goto_3a
    move-object v9, v14

    move-object v11, v9

    :goto_3b
    if-eqz v11, :cond_62

    .line 160
    iget-object v1, v11, Lc6;->z0:[Lc6;

    aget-object v1, v1, p2

    :goto_3c
    if-eqz v1, :cond_58

    .line 161
    iget v2, v1, Lc6;->e0:I

    if-ne v2, v15, :cond_58

    .line 162
    iget-object v1, v1, Lc6;->z0:[Lc6;

    aget-object v1, v1, p2

    goto :goto_3c

    :cond_58
    if-eq v11, v14, :cond_60

    if-eq v11, v12, :cond_60

    if-eqz v1, :cond_60

    if-ne v1, v12, :cond_59

    move-object/from16 v8, v17

    goto :goto_3d

    :cond_59
    move-object v8, v1

    .line 163
    :goto_3d
    iget-object v1, v11, Lc6;->I:[Lb6;

    aget-object v1, v1, v16

    .line 164
    iget-object v2, v1, Lb6;->g:Lx5;

    .line 165
    iget-object v3, v9, Lc6;->I:[Lb6;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lb6;->g:Lx5;

    .line 166
    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    .line 167
    iget-object v5, v11, Lc6;->I:[Lb6;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lb6;->c()I

    move-result v5

    if-eqz v8, :cond_5b

    .line 168
    iget-object v6, v8, Lc6;->I:[Lb6;

    aget-object v6, v6, v16

    .line 169
    iget-object v7, v6, Lb6;->g:Lx5;

    .line 170
    iget-object v15, v6, Lb6;->d:Lb6;

    if-eqz v15, :cond_5a

    iget-object v15, v15, Lb6;->g:Lx5;

    goto :goto_3f

    :cond_5a
    move-object/from16 v15, v17

    goto :goto_3f

    .line 171
    :cond_5b
    iget-object v6, v12, Lc6;->I:[Lb6;

    aget-object v6, v6, v16

    if-eqz v6, :cond_5c

    .line 172
    iget-object v7, v6, Lb6;->g:Lx5;

    goto :goto_3e

    :cond_5c
    move-object/from16 v7, v17

    .line 173
    :goto_3e
    iget-object v15, v11, Lc6;->I:[Lb6;

    aget-object v15, v15, v4

    iget-object v15, v15, Lb6;->g:Lx5;

    :goto_3f
    if-eqz v6, :cond_5d

    .line 174
    invoke-virtual {v6}, Lb6;->c()I

    move-result v6

    add-int/2addr v6, v5

    move/from16 v19, v6

    goto :goto_40

    :cond_5d
    move/from16 v19, v5

    .line 175
    :goto_40
    iget-object v5, v9, Lc6;->I:[Lb6;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lb6;->c()I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v26, :cond_5e

    const/16 v23, 0x8

    goto :goto_41

    :cond_5e
    const/16 v23, 0x4

    :goto_41
    if-eqz v2, :cond_5f

    if-eqz v3, :cond_5f

    if-eqz v7, :cond_5f

    if-eqz v15, :cond_5f

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    const/16 v25, 0x4

    move-object v6, v7

    move-object v7, v15

    move-object v15, v8

    move/from16 v8, v19

    move-object/from16 v19, v9

    move/from16 v9, v23

    .line 176
    invoke-virtual/range {v1 .. v9}, Lu5;->b(Lx5;Lx5;IFLx5;Lx5;II)V

    goto :goto_42

    :cond_5f
    move-object v15, v8

    move-object/from16 v19, v9

    const/16 v25, 0x4

    :goto_42
    move-object v8, v15

    goto :goto_43

    :cond_60
    move-object/from16 v19, v9

    const/16 v25, 0x4

    move-object v8, v1

    .line 177
    :goto_43
    iget v1, v11, Lc6;->e0:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_61

    move-object v9, v11

    goto :goto_44

    :cond_61
    move-object/from16 v9, v19

    :goto_44
    move-object v11, v8

    const/16 v15, 0x8

    const/16 v27, 0x4

    goto/16 :goto_3b

    .line 178
    :cond_62
    iget-object v1, v14, Lc6;->I:[Lb6;

    aget-object v1, v1, v16

    .line 179
    iget-object v0, v0, Lc6;->I:[Lb6;

    aget-object v0, v0, v16

    iget-object v0, v0, Lb6;->d:Lb6;

    .line 180
    iget-object v2, v12, Lc6;->I:[Lb6;

    add-int/lit8 v3, v16, 0x1

    aget-object v11, v2, v3

    .line 181
    iget-object v2, v13, Lc6;->I:[Lb6;

    aget-object v2, v2, v3

    iget-object v15, v2, Lb6;->d:Lb6;

    if-eqz v0, :cond_64

    if-eq v14, v12, :cond_63

    .line 182
    iget-object v2, v1, Lb6;->g:Lx5;

    iget-object v0, v0, Lb6;->g:Lx5;

    invoke-virtual {v1}, Lb6;->c()I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v10, v2, v0, v1, v3}, Lu5;->d(Lx5;Lx5;II)Ls5;

    goto :goto_45

    :cond_63
    if-eqz v15, :cond_64

    .line 183
    iget-object v2, v1, Lb6;->g:Lx5;

    iget-object v3, v0, Lb6;->g:Lx5;

    invoke-virtual {v1}, Lb6;->c()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v11, Lb6;->g:Lx5;

    iget-object v7, v15, Lb6;->g:Lx5;

    .line 184
    invoke-virtual {v11}, Lb6;->c()I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v1, p1

    .line 185
    invoke-virtual/range {v1 .. v9}, Lu5;->b(Lx5;Lx5;IFLx5;Lx5;II)V

    :cond_64
    :goto_45
    if-eqz v15, :cond_65

    if-eq v14, v12, :cond_65

    .line 186
    iget-object v0, v11, Lb6;->g:Lx5;

    iget-object v1, v15, Lb6;->g:Lx5;

    invoke-virtual {v11}, Lb6;->c()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v10, v0, v1, v2, v3}, Lu5;->d(Lx5;Lx5;II)Ls5;

    :cond_65
    :goto_46
    if-nez v21, :cond_66

    if-eqz v24, :cond_6c

    :cond_66
    if-eqz v14, :cond_6c

    if-eq v14, v12, :cond_6c

    .line 187
    iget-object v0, v14, Lc6;->I:[Lb6;

    aget-object v1, v0, v16

    .line 188
    iget-object v2, v12, Lc6;->I:[Lb6;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    .line 189
    iget-object v4, v1, Lb6;->d:Lb6;

    if-eqz v4, :cond_67

    iget-object v4, v4, Lb6;->g:Lx5;

    goto :goto_47

    :cond_67
    move-object/from16 v4, v17

    .line 190
    :goto_47
    iget-object v5, v2, Lb6;->d:Lb6;

    if-eqz v5, :cond_68

    iget-object v5, v5, Lb6;->g:Lx5;

    goto :goto_48

    :cond_68
    move-object/from16 v5, v17

    :goto_48
    if-eq v13, v12, :cond_6a

    .line 191
    iget-object v5, v13, Lc6;->I:[Lb6;

    aget-object v5, v5, v3

    .line 192
    iget-object v5, v5, Lb6;->d:Lb6;

    if-eqz v5, :cond_69

    iget-object v5, v5, Lb6;->g:Lx5;

    move-object/from16 v17, v5

    :cond_69
    move-object/from16 v6, v17

    goto :goto_49

    :cond_6a
    move-object v6, v5

    :goto_49
    if-ne v14, v12, :cond_6b

    .line 193
    aget-object v1, v0, v16

    .line 194
    aget-object v2, v0, v3

    :cond_6b
    if-eqz v4, :cond_6c

    if-eqz v6, :cond_6c

    const/high16 v5, 0x3f000000    # 0.5f

    .line 195
    invoke-virtual {v1}, Lb6;->c()I

    move-result v0

    .line 196
    iget-object v7, v12, Lc6;->I:[Lb6;

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lb6;->c()I

    move-result v8

    .line 197
    iget-object v3, v1, Lb6;->g:Lx5;

    iget-object v7, v2, Lb6;->g:Lx5;

    const/4 v9, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v0

    invoke-virtual/range {v1 .. v9}, Lu5;->b(Lx5;Lx5;IFLx5;Lx5;II)V

    :cond_6c
    add-int/lit8 v9, v28, 0x1

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-object/from16 v15, v29

    move/from16 v14, v31

    move-object/from16 v11, v35

    goto/16 :goto_1

    :cond_6d
    return-void
.end method

.method public static a0(Landroid/widget/PopupWindow;Z)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    goto :goto_1

    .line 3
    :cond_0
    sget-boolean v0, Ld0$h;->r:Z

    const-string v1, "PopupWindowCompatApi21"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "mOverlapAnchor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ld0$h;->q:Ljava/lang/reflect/Field;

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Could not fetch mOverlapAnchor field from PopupWindow"

    .line 6
    invoke-static {v1, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    sput-boolean v0, Ld0$h;->r:Z

    .line 8
    :cond_1
    sget-object v0, Ld0$h;->q:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 9
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Could not set overlap anchor field in PopupWindow"

    .line 10
    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    if-nez p0, :cond_2

    .line 1
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_1

    .line 2
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_4

    .line 3
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 4
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 5
    :cond_4
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 6
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v5, v3, :cond_5

    .line 7
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 8
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static b0(Landroid/widget/TextView;Ln9;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Ld0$h;->L(Landroid/widget/TextView;)Ln9$a;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ln9$a;->a(Ln9$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given text can not be applied to TextView."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 9

    .line 1
    invoke-static {p0, p1, p2}, Ld0$h;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 2
    invoke-static {p0, p1, p3}, Ld0$h;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    const/16 v1, 0x82

    const/16 v3, 0x21

    const/16 v4, 0x42

    const/16 v5, 0x11

    const/4 v6, 0x1

    if-eq p0, v5, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v4, :cond_2

    if-ne p0, v1, :cond_1

    .line 3
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p3, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_5

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p3, Landroid/graphics/Rect;->left:I

    if-gt v7, v8, :cond_5

    goto :goto_0

    .line 6
    :cond_3
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v8, :cond_5

    goto :goto_0

    .line 7
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_5

    :goto_0
    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_6

    return v6

    :cond_6
    if-eq p0, v5, :cond_d

    if-ne p0, v4, :cond_7

    goto :goto_3

    .line 8
    :cond_7
    invoke-static {p0, p1, p2}, Ld0$h;->O(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    if-eq p0, v5, :cond_b

    if-eq p0, v3, :cond_a

    if-eq p0, v4, :cond_9

    if-ne p0, v1, :cond_8

    .line 9
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 10
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_9
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 12
    :cond_a
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 13
    :cond_b
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p3, Landroid/graphics/Rect;->left:I

    :goto_2
    sub-int/2addr p0, p1

    .line 14
    invoke-static {v6, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p2, p0, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2

    :cond_d
    :goto_3
    return v6

    :cond_e
    :goto_4
    return v2
.end method

.method public static c0(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 3
    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_4

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static d0(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static e0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static f([Lf8;[Lf8;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 3
    aget-object v2, p0, v1

    iget-char v2, v2, Lf8;->a:C

    aget-object v3, p1, v1

    iget-char v3, v3, Lf8;->a:C

    if-ne v2, v3, :cond_3

    aget-object v2, p0, v1

    iget-object v2, v2, Lf8;->b:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Lf8;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public static f0(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static g(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static g0(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lf3;->n:Lf3;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lf3;->e:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 4
    invoke-static {v1}, Lf3;->c(Lf3;)V

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object p1, Lf3;->o:Lf3;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lf3;->e:Landroid/view/View;

    if-ne v0, p0, :cond_2

    .line 7
    invoke-virtual {p1}, Lf3;->b()V

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Lf3;

    invoke-direct {v0, p0, p1}, Lf3;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h0(Landroid/widget/PopupWindow;I)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    return-void

    .line 3
    :cond_0
    sget-boolean v0, Ld0$h;->p:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setWindowLayoutType"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ld0$h;->o:Ljava/lang/reflect/Method;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    sput-boolean v2, Ld0$h;->p:Z

    .line 7
    :cond_1
    sget-object v0, Ld0$h;->o:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_1

    .line 3
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-nez p4, :cond_5

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 5
    array-length p4, p3

    if-gtz p4, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    aget-object p4, p3, v2

    goto :goto_2

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    if-lt p2, v1, :cond_6

    .line 7
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 8
    invoke-virtual {p0, p1, p4}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_3

    :cond_6
    const/4 p0, 0x1

    :goto_3
    if-eqz p0, :cond_7

    const/4 p0, -0x2

    return p0

    :cond_7
    return v2
.end method

.method public static i0(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_2

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {p0, p1, v0, v1, v2}, Ld0$h;->i(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static j0([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 3
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static k(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static k0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lp8;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lp8;

    invoke-interface {p0}, Lp8;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static l(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static l0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Lo8;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lr8;

    invoke-direct {v0, p0}, Lr8;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static m(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 4
    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ld0$h;->m(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    instance-of v0, p0, Lp8;

    if-eqz v0, :cond_2

    .line 7
    check-cast p0, Lp8;

    invoke-interface {p0}, Lp8;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ld0$h;->m(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 8
    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_4

    .line 9
    check-cast p0, Landroid/graphics/drawable/DrawableContainer;

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 13
    invoke-static {v2}, Ld0$h;->m(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static m0(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    instance-of v0, p1, Lab;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lab;

    invoke-direct {v0, p1, p0}, Lab;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static n(Landroidx/recyclerview/widget/RecyclerView$x;Lwf;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$m;Z)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$m;->y()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 2
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Lwf;->b(Landroid/view/View;)I

    move-result p0

    .line 4
    invoke-virtual {p1, p2}, Lwf;->e(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    .line 5
    invoke-virtual {p1}, Lwf;->l()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Landroidx/recyclerview/widget/RecyclerView$x;Lwf;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$m;ZZ)I
    .locals 4

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$m;->y()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result v0

    .line 3
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result v2

    .line 4
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result v2

    .line 6
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result v3

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    .line 10
    :cond_2
    invoke-virtual {p1, p3}, Lwf;->b(Landroid/view/View;)I

    move-result p5

    .line 11
    invoke-virtual {p1, p2}, Lwf;->e(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    .line 12
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 13
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result p6

    .line 14
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    .line 15
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float p0, p0, p4

    .line 16
    invoke-virtual {p1}, Lwf;->k()I

    move-result p3

    .line 17
    invoke-virtual {p1, p2}, Lwf;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    .line 18
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static p(Landroidx/recyclerview/widget/RecyclerView$x;Lwf;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$m;Z)I
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$m;->y()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Lwf;->b(Landroid/view/View;)I

    move-result p5

    .line 4
    invoke-virtual {p1, p2}, Lwf;->e(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    .line 5
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result p1

    .line 6
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->R(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result p0

    int-to-float p0, p0

    mul-float p2, p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q([FII)[F
    .locals 2

    if-gt p1, p2, :cond_1

    .line 1
    array-length v0, p0

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static r(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p0, p1}, Ld0$h;->s(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 3
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4
    :catch_1
    :cond_1
    throw p0
.end method

.method public static s(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x400

    :try_start_1
    new-array p0, p0, [B

    .line 3
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 4
    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6
    :catch_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    const-string p1, "TypefaceCompatUtil"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error copying resource contents to temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 8
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 9
    :catch_3
    :cond_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :goto_2
    if-eqz v2, :cond_2

    .line 10
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 11
    :catch_4
    :cond_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 12
    throw p0
.end method

.method public static t(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {p0, p1, v0, p2}, Ld0$h;->u(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selector"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0x14

    new-array v5, v4, [[I

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v3, :cond_d

    .line 5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ge v9, v2, :cond_0

    const/4 v10, 0x3

    if-eq v8, v10, :cond_d

    :cond_0
    const/4 v10, 0x2

    if-ne v8, v10, :cond_c

    if-gt v9, v2, :cond_c

    .line 6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_7

    .line 7
    :cond_1
    sget-object v8, Landroidx/core/R$styleable;->ColorStateListItem:[I

    if-nez v1, :cond_2

    move-object/from16 v9, p0

    .line 8
    invoke-virtual {v9, v0, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    .line 9
    invoke-virtual {v1, v0, v8, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 10
    :goto_1
    sget v10, Landroidx/core/R$styleable;->ColorStateListItem_android_color:I

    const v11, -0xff01

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    .line 11
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_android_alpha:I

    invoke-virtual {v8, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 12
    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    goto :goto_2

    .line 13
    :cond_3
    sget v12, Landroidx/core/R$styleable;->ColorStateListItem_alpha:I

    invoke-virtual {v8, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 14
    invoke-virtual {v8, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 15
    :cond_4
    :goto_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v8

    .line 17
    new-array v12, v8, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v13, v8, :cond_7

    .line 18
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    const v3, 0x10101a5

    if-eq v15, v3, :cond_6

    const v3, 0x101031f

    if-eq v15, v3, :cond_6

    .line 19
    sget v3, Landroidx/core/R$attr;->alpha:I

    if-eq v15, v3, :cond_6

    add-int/lit8 v3, v14, 0x1

    .line 20
    invoke-interface {v0, v13, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    neg-int v15, v15

    .line 21
    :goto_4
    aput v15, v12, v14

    move v14, v3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_3

    .line 22
    :cond_7
    invoke-static {v12, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v3

    .line 23
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const v11, 0xffffff

    and-int/2addr v10, v11

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v8, v10

    add-int/lit8 v10, v7, 0x1

    .line 24
    array-length v11, v4

    const/4 v12, 0x4

    const/16 v13, 0x8

    if-le v10, v11, :cond_9

    if-gt v7, v12, :cond_8

    const/16 v11, 0x8

    goto :goto_5

    :cond_8
    mul-int/lit8 v11, v7, 0x2

    .line 25
    :goto_5
    new-array v11, v11, [I

    .line 26
    invoke-static {v4, v6, v11, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v11

    .line 27
    :cond_9
    aput v8, v4, v7

    .line 28
    array-length v8, v5

    if-le v10, v8, :cond_b

    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    if-gt v7, v12, :cond_a

    goto :goto_6

    :cond_a
    mul-int/lit8 v13, v7, 0x2

    :goto_6
    invoke-static {v8, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 30
    invoke-static {v5, v6, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v8

    .line 31
    :cond_b
    aput-object v3, v5, v7

    .line 32
    check-cast v5, [[I

    move v7, v10

    goto :goto_8

    :cond_c
    :goto_7
    move-object/from16 v9, p0

    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 33
    :cond_d
    new-array v0, v7, [I

    .line 34
    new-array v1, v7, [[I

    .line 35
    invoke-static {v4, v6, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-static {v5, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 38
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Ljava/lang/String;)[Lf8;
    .locals 16

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_10

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ge v3, v5, :cond_3

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v5, -0x41

    add-int/lit8 v9, v5, -0x5a

    mul-int v9, v9, v8

    if-lez v9, :cond_1

    add-int/lit8 v8, v5, -0x61

    add-int/lit8 v9, v5, -0x7a

    mul-int v9, v9, v8

    if-gtz v9, :cond_2

    :cond_1
    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_3
    :goto_2
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 7
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x7a

    if-eq v5, v8, :cond_e

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x5a

    if-ne v5, v8, :cond_4

    goto/16 :goto_a

    .line 8
    :cond_4
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [F

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_3
    if-ge v9, v8, :cond_d

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v9

    .line 10
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v14, v15, :cond_a

    .line 11
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v7, 0x20

    if-eq v15, v7, :cond_7

    const/16 v7, 0x65

    if-eq v15, v6, :cond_6

    if-eq v15, v7, :cond_6

    packed-switch v15, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-nez v12, :cond_5

    const/4 v12, 0x1

    goto :goto_6

    :pswitch_1
    if-eq v14, v9, :cond_8

    if-nez v13, :cond_8

    :cond_5
    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/16 v7, 0x65

    :goto_5
    :pswitch_2
    const/4 v2, 0x1

    :cond_8
    :goto_6
    const/4 v13, 0x0

    :goto_7
    if-eqz v2, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_a
    :goto_8
    if-ge v9, v14, :cond_b

    add-int/lit8 v2, v10, 0x1

    .line 12
    invoke-virtual {v4, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v5, v10

    move v10, v2

    :cond_b
    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v14, v14, 0x1

    :goto_9
    move v9, v14

    const/4 v2, 0x0

    goto :goto_3

    .line 14
    :cond_d
    invoke-static {v5, v2, v10}, Ld0$h;->q([FII)[F

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    goto :goto_b

    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error in parsing \""

    const-string v3, "\""

    invoke-static {v2, v4, v3}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    :goto_a
    new-array v5, v2, [F

    .line 16
    :goto_b
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 17
    new-instance v4, Lf8;

    invoke-direct {v4, v2, v5}, Lf8;-><init>(C[F)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x0

    move v4, v3

    move v3, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_10
    sub-int/2addr v3, v4

    const/4 v2, 0x1

    if-ne v3, v2, :cond_11

    .line 18
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_11

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    new-array v2, v2, [F

    .line 20
    new-instance v3, Lf8;

    invoke-direct {v3, v0, v2}, Lf8;-><init>(C[F)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lf8;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf8;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static w(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    invoke-static {p0}, Ld0$h;->v(Ljava/lang/String;)[Lf8;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {v1, v0}, Lf8;->b([Lf8;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in parsing "

    invoke-static {v2, p0}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x([Lf8;)[Lf8;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lf8;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Lf8;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lf8;-><init>(Lf8;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static y(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bundle must contain "

    invoke-static {v0, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-boolean v0, Ld0$h;->d:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ld0$h;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Could not find ThemedResourceCache class"

    .line 3
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_0
    sput-boolean v1, Ld0$h;->d:Z

    .line 5
    :cond_0
    sget-object v0, Ld0$h;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    sget-boolean v3, Ld0$h;->f:Z

    if-nez v3, :cond_2

    :try_start_1
    const-string v3, "mUnthemedEntries"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ld0$h;->e:Ljava/lang/reflect/Field;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 9
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_1
    sput-boolean v1, Ld0$h;->f:Z

    .line 11
    :cond_2
    sget-object v0, Ld0$h;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 12
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 13
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_4
    return-void
.end method
